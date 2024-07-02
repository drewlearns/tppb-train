const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

const stripeModule = require("stripe");

// Credentials
const kStripeProdSecretKey =
  "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";
const kStripeTestSecretKey =
  "sk_test_51OKoUuJMeGUbw0WodKTGYm9ICvEUEy14E2vjIci3XVvDQN0xTK6Yg0mOiCDNIRXYCrlxZT1BGKao12HsHudDXANE00hMkf8i1x";

const secretKey = (isProd) =>
  isProd ? kStripeProdSecretKey : kStripeTestSecretKey;

/**
 *
 */
exports.initStripePayment = functions
  .region("us-central1")
  .https.onCall(async (data, context) => {
    if (!context.auth) {
      return "Unauthenticated calls are not allowed.";
    }
    return await initPayment(data, true);
  });

/**
 *
 */
exports.initStripeTestPayment = functions
  .region("us-central1")
  .https.onCall(async (data, context) => {
    if (!context.auth) {
      return "Unauthenticated calls are not allowed.";
    }
    return await initPayment(data, false);
  });

async function initPayment(data, isProd) {
  try {
    const stripe = new stripeModule.Stripe(secretKey(isProd), {
      apiVersion: "2020-08-27",
    });

    const customers = await stripe.customers.list({
      email: data.email,
      limit: 1,
    });
    var customer = customers.data[0];
    if (!customer) {
      customer = await stripe.customers.create({
        email: data.email,
        ...(data.name && { name: data.name }),
      });
    }

    const ephemeralKey = await stripe.ephemeralKeys.create(
      { customer: customer.id },
      { apiVersion: "2020-08-27" },
    );
    const paymentIntent = await stripe.paymentIntents.create({
      amount: data.amount,
      currency: data.currency,
      customer: customer.id,
      ...(data.description && { description: data.description }),
    });

    return {
      paymentId: paymentIntent.id,
      paymentIntent: paymentIntent.client_secret,
      ephemeralKey: ephemeralKey.secret,
      customer: customer.id,
      success: true,
    };
  } catch (error) {
    console.log(`Error: ${error}`);
    return { success: false, error: userFacingMessage(error) };
  }
}

/**
 * Sanitize the error message for the user.
 */
function userFacingMessage(error) {
  return error.type
    ? error.message
    : "An error occurred, developers have been alerted";
}
const apiManager = require("./api_manager");
const { onRequest } = require("firebase-functions/v2/https");
const { setGlobalOptions } = require("firebase-functions/v2");
const { pipeline } = require("node:stream/promises");

setGlobalOptions({ region: "us-central1" });

exports.ffPrivateApiCall = functions
  .region("us-central1")
  .runWith({ minInstances: 1, timeoutSeconds: 120 })
  .https.onCall(async (data, context) => {
    try {
      console.log(`Making API call for ${data["callName"]}`);
      var response = await apiManager.makeApiCall(context, data);
      console.log(`Done making API Call! Status: ${response.statusCode}`);
      return response;
    } catch (err) {
      console.error(`Error performing API call: ${err}`);
      return {
        statusCode: 400,
        error: `${err}`,
      };
    }
  });

async function verifyAuthHeader(request) {
  const authorization = request.header("authorization");
  if (!authorization) {
    return null;
  }
  const idToken = authorization.includes("Bearer ")
    ? authorization.split("Bearer ")[1]
    : null;
  if (!idToken) {
    return null;
  }
  try {
    const authResult = await admin.auth().verifyIdToken(idToken);
    return authResult;
  } catch (err) {
    return null;
  }
}

exports.ffPrivateApiCallV2 = onRequest(
  { cors: true, minInstances: 1, timeoutSeconds: 120 },
  async (req, res) => {
    try {
      const context = {
        auth: await verifyAuthHeader(req),
      };
      const data = req.body.data;
      console.log(`Making API call for ${data["callName"]}`);
      var endpointResponse = await apiManager.makeApiCall(context, data);
      console.log(
        `Done making API Call! Status: ${endpointResponse.statusCode}`,
      );
      res.set(endpointResponse.headers);
      res.status(endpointResponse.statusCode);
      await pipeline(endpointResponse.body, res);
    } catch (err) {
      console.error(`Error performing API call: ${err}`);
      res.status(400).send(`${err}`);
    }
  },
);
