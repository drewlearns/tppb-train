const axios = require("axios").default;
const qs = require("qs");

/// Start TPPB Group Code

function createTppbGroup(
  authenticationToken,
  householdIdGlobal,
  paymentSourceIdGlobal,
) {
  return {
    baseUrl: `https://api.thepurplepiggybank.com`,
    headers: { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` },
  };
}

async function _addUserCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var email = ffVariables["email"];
  var mailOptIn = ffVariables["mailOptIn"];
  var firstName = ffVariables["firstName"];
  var lastName = ffVariables["lastName"];
  var uuid = ffVariables["uuid"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/addUser`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
"email":"${email}",
"mailOptIn":${mailOptIn},
"firstName":"${firstName}",
"lastName":"${lastName}",
"uuid":"${uuid}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getLedgerCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var householdId = ffVariables["householdId"];
  var month = ffVariables["month"];
  var year = ffVariables["year"];
  var showCurrentMonthOnly = ffVariables["showCurrentMonthOnly"];
  var showClearedOnly = ffVariables["showClearedOnly"];
  var showCurrentMonthUpToToday = ffVariables["showCurrentMonthUpToToday"];
  var threshold = ffVariables["threshold"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getLedger`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}",
  "filters": {
    "month": ${month},
    "year": ${year},
    "showCurrentMonthOnly": ${showCurrentMonthOnly},
    "showClearedOnly": ${showClearedOnly},
    "showCurrentMonthUpToToday": ${showCurrentMonthUpToToday}
  },
  "threshold": "${threshold}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getHouseholdCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getHousehold`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _editLedgerEntryAsClearedCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var ledgerId = ffVariables["ledgerId"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/editLedgerEntryAsCleared`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "ledgerId": "${ledgerId}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getPaymentSourceCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getPaymentSource`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _addBillCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var category = ffVariables["category"];
  var billName = ffVariables["billName"];
  var amount = ffVariables["amount"];
  var dayOfMonth = ffVariables["dayOfMonth"];
  var frequency = ffVariables["frequency"];
  var description = ffVariables["description"];
  var url = ffVariables["url"];
  var user = ffVariables["user"];
  var password = ffVariables["password"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/addBill`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}",
  "billData": {
    "category": "${category}",
    "billName": "${billName}",
    "amount": ${amount},
    "dayOfMonth": ${dayOfMonth},
    "frequency": "${frequency}",
    "description": "${description}",
    "url": "${url}",
    "username": "${user}",
    "paymentSourceId": "${paymentSourceIdGlobal}",
    "password": "${password}"
  }
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _addIncomeCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var incomeName = ffVariables["incomeName"];
  var incomeAmount = ffVariables["incomeAmount"];
  var incomeFrequency = ffVariables["incomeFrequency"];
  var incomeFirstPayDay = ffVariables["incomeFirstPayDay"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/addIncome`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}",
  "paymentSourceId": "${paymentSourceIdGlobal}",
  "incomeData": {
    "name": "${incomeName}",
    "amount": ${incomeAmount},
    "frequency": "${incomeFrequency}",
    "firstPayDay": "${incomeFirstPayDay}"
  }
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getBillsCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var filterType = ffVariables["filterType"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getBills`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}",
  "filterType": "${filterType}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getLedgerEntryCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var ledgerId = ffVariables["ledgerId"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getLedgerEntry`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "ledgerId": "${ledgerId}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getSafeToSpendCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getSafeToSpend`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getTotalSpentCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getTotalSpent`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _addTransactionCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var amount = ffVariables["amount"];
  var transactionType = ffVariables["transactionType"];
  var transactionDate = ffVariables["transactionDate"];
  var category = ffVariables["category"];
  var description = ffVariables["description"];
  var status = ffVariables["status"];
  var tags = ffVariables["tags"];
  var image = ffVariables["image"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/addTransaction`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}",
  "amount": ${amount},
  "transactionType": "${transactionType}",
  "transactionDate": "${transactionDate}",
  "category": "${category}",
  "description": "${description}",
  "status": ${status},
  "sourceId": "${paymentSourceIdGlobal}",
  "tags": "${tags}",
  "image": "${image}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getBillPasswordCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var billId = ffVariables["billId"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getBillPassword`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "billId": "${billId}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getBillCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var billId = ffVariables["billId"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getBill`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "billId": "${billId}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getIncomeCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var incomeId = ffVariables["incomeId"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getIncome`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "incomeId": "${incomeId}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getTransactionCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var transactionId = ffVariables["transactionId"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getTransaction`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "transactionId": "${transactionId}",
  "authToken": "${authenticationToken}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getFilePathCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var transactionId = ffVariables["transactionId"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getFilePath`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "transactionId": "${transactionId}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getIncomesCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getIncomes`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getCurrentMonthIncomeCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getCurrentMonthIncome`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _searchTransactionsCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var query = ffVariables["query"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/searchTransactions`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
"query":"${query}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getNotificationsCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getNotifications`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getNotificationCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var notificationId = ffVariables["notificationId"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getNotification`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "notificationId": "${notificationId}",
  "authToken": "${authenticationToken}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _editNotificationCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var notificationId = ffVariables["notificationId"];
  var dueDate = ffVariables["dueDate"];
  var title = ffVariables["title"];
  var message = ffVariables["message"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/editNotification`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "notificationId": "${notificationId}",
  "title": "${title}",
  "message": "${message}",
  "dueDate": "${dueDate}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _subscriptionCheckerCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var userUuid = ffVariables["userUuid"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/subscriptionChecker`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{"uuid":"${userUuid}"}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getAllBillsCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getAllBills`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _editBillCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var amount = ffVariables["amount"];
  var dayOfMonth = ffVariables["dayOfMonth"];
  var category = ffVariables["category"];
  var description = ffVariables["description"];
  var sourceId = ffVariables["sourceId"];
  var billId = ffVariables["billId"];
  var url = ffVariables["url"];
  var username = ffVariables["username"];
  var password = ffVariables["password"];
  var frequency = ffVariables["frequency"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/editBill`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "householdId": "${householdIdGlobal}",
  "amount": "${amount}",
  "dayOfMonth": ${dayOfMonth},
  "category": "${category}",
  "description": "${description}",
  "sourceId": "${sourceId}",
  "billId": "${billId}",
  "url": "${url}",
  "username": "${username}",
  "password": "${password}",
  "frequency": "${frequency}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _deleteBillCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var billId = ffVariables["billId"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/deleteBill`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}",
  "billId": "${billId}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _addInviteCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var email = ffVariables["email"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/addInvite`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authorizationToken": "${authenticationToken}",
  "email": "${email}",
  "householdId": "${householdIdGlobal}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _acceptInviteCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var invitationId = ffVariables["invitationId"];
  var mailOptIn = ffVariables["mailOptIn"];
  var firstName = ffVariables["firstName"];
  var lastName = ffVariables["lastName"];
  var uuid = ffVariables["uuid"];
  var email = ffVariables["email"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/acceptInvite`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "invitationId": "${invitationId}",
  "email": "${email}",
  "mailOptIn": ${mailOptIn},
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "uuid": "${uuid}"
}
`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _addHouseholdCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var householdName = ffVariables["householdName"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/addHousehold`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdData": {
    "householdName": "${householdName}",
    "activeSubscription": false
  }
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _editHouseholdCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var householdName = ffVariables["householdName"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/editHousehold`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}",
  "householdData": {
    "householdName": "${householdName}"
  }
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getHouseholdMembersCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getHouseholdMembers`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _deleteMemberFromHouseholdCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var memberUuid = ffVariables["memberUuid"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/deleteMemberFromHousehold`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}",
  "memberUuid": "${memberUuid}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _deleteHouseholdCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/deleteHousehold`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _editIncomeCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var incomeId = ffVariables["incomeId"];
  var name = ffVariables["name"];
  var amount = ffVariables["amount"];
  var frequency = ffVariables["frequency"];
  var date = ffVariables["date"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/editIncome`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "incomeId": "${incomeId}",
  "updatedIncomeData": {
    "name": "${name}",
    "amount": ${amount},
    "frequency": "${frequency}",
    "firstPayDay": "${date}",
    "paymentSourceId": "${paymentSourceIdGlobal}"
  }
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _deleteIncomeCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var incomeId = ffVariables["incomeId"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/deleteIncome`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "incomeId": "${incomeId}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getCategoriesCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getCategories`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _exportLedgerToCsvCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/exportLedgerToCsv`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authorizationToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}",
  "paymentSourceId": "${paymentSourceIdGlobal}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _exportLedgerToQBOCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/exportLedgerToQBO`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authorizationToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}",
  "paymentSourceId": "${paymentSourceIdGlobal}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _exportSearchCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var reportType = ffVariables["reportType"];
  var category = ffVariables["category"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/exportSearch`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authorizationToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}",
  "paymentSourceId": "${paymentSourceIdGlobal}",
  "reportType": "${reportType}",
  "category": "${category}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _editLedgerEntryCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var status = ffVariables["status"];
  var ledgerId = ffVariables["ledgerId"];
  var transactionDate = ffVariables["transactionDate"];
  var description = ffVariables["description"];
  var amount = ffVariables["amount"];
  var category = ffVariables["category"];
  var tags = ffVariables["tags"];
  var transactionType = ffVariables["transactionType"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/editLedgerEntry`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "ledgerId": "${ledgerId}",
  "updatedLedgerData": {
    "transactionDate": "${transactionDate}",
    "status": ${status},
    "description": "${description}",
    "amount": ${amount},
    "category": "${category}",
    "tags": "${tags}",
    "householdId": "${householdIdGlobal}",
    "paymentSourceId": "${paymentSourceIdGlobal}",
    "transactionType": "${transactionType}"
  }
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _editTransactionCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var amount = ffVariables["amount"];
  var transactionType = ffVariables["transactionType"];
  var transactionDate = ffVariables["transactionDate"];
  var category = ffVariables["category"];
  var description = ffVariables["description"];
  var status = ffVariables["status"];
  var tags = ffVariables["tags"];
  var image = ffVariables["image"];
  var transactionId = ffVariables["transactionId"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/editTransaction`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "transactionId": "${transactionId}",
  "householdId": "${householdIdGlobal}",
  "amount": ${amount},
  "transactionType": "${transactionType}",
  "transactionDate": "${transactionDate}",
  "category": "${category}",
  "description": "${description}",
  "status": ${status},
  "sourceId": "${paymentSourceIdGlobal}",
  "tags": "${tags}",
  "image": "${image}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getUserCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getUser`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _editUserCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var email = ffVariables["email"];
  var optin = ffVariables["optin"];
  var firstName = ffVariables["firstName"];
  var lastName = ffVariables["lastName"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/editUser`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "email": "${email}",
  "mailOptIn": ${optin},
  "firstName": "${firstName}",
  "lastName": "${lastName}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _deleteUserCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/deleteUser`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getDefaultPaymentSourceCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/getDefaultPaymentSource`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "householdId": "${householdIdGlobal}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _setDefaultPaymentSourceCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/setDefaultPaymentSource`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "householdId": "${householdIdGlobal}",
  "paymentSourceId": "${paymentSourceIdGlobal}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _addPaymentSourceCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var name = ffVariables["name"];
  var type = ffVariables["type"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/addPaymentSource`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "householdId": "${householdIdGlobal}",
  "name": "${name}",
  "type": "${type}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _editPaymentSourceCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var name = ffVariables["name"];
  var type = ffVariables["type"];
  var description = ffVariables["description"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/editPaymentSource`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "sourceId": "${paymentSourceIdGlobal}",
  "name": "${name}",
  "type": "${type}",
  "description": "${description}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _deletePaymentSourceCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/deletePaymentSource`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "sourceId": "${paymentSourceIdGlobal}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _deleteTransactionCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var transactionId = ffVariables["transactionId"];
  var authenticationToken = ffVariables["authenticationToken"];
  var householdIdGlobal = ffVariables["householdIdGlobal"];
  var paymentSourceIdGlobal = ffVariables["paymentSourceIdGlobal"];
  const tppbGroup = createTppbGroup(
    authenticationToken,
    householdIdGlobal,
    paymentSourceIdGlobal,
  );

  var url = `${tppbGroup.baseUrl}/deleteTransaction`;
  var headers = { "x-api-key": `zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM` };
  var params = {};
  var ffApiRequestBody = `
{
  "authToken": "${authenticationToken}",
  "transactionId": "${transactionId}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

/// End TPPB Group Code

/// Start stripeSubscription Group Code

function createStripeSubscriptionGroup() {
  return {
    baseUrl: `https://api.stripe.com/v1`,
    headers: {
      Authorization: `Bearer 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`,
      ContentType: `application/x-xxx-formm-urlencoded`,
    },
  };
}

async function _createCustomerCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var email = ffVariables["email"];
  var id = ffVariables["id"];
  var name = ffVariables["name"];
  const stripeSubscriptionGroup = createStripeSubscriptionGroup();

  var url = `${stripeSubscriptionGroup.baseUrl}/customers`;
  var headers = {
    Authorization: `Bearer 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`,
    ContentType: `application/x-xxx-formm-urlencoded`,
  };
  var params = { email: email, id: id, name: name };
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "X_WWW_FORM_URL_ENCODED",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _createCheckoutSessionCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var priceId = ffVariables["priceId"];
  var mode = ffVariables["mode"];
  var uuid = ffVariables["uuid"];
  var cancelUrl = ffVariables["cancelUrl"];
  const stripeSubscriptionGroup = createStripeSubscriptionGroup();

  var url = `${stripeSubscriptionGroup.baseUrl}/checkout/sessions`;
  var headers = {
    Authorization: `Bearer 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`,
    ContentType: `application/x-xxx-formm-urlencoded`,
  };
  var params = {
    mode: mode,
    success_url: `https://thepurplepiggybank.com/thankyou`,
    cancel_url: cancelUrl,
    "line_items[0][price]": priceId,
    "line_items[0][quantity": `1`,
    customer: uuid,
  };
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "X_WWW_FORM_URL_ENCODED",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _getCustomerPortalSessionCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var uuid = ffVariables["uuid"];
  const stripeSubscriptionGroup = createStripeSubscriptionGroup();

  var url = `${stripeSubscriptionGroup.baseUrl}/billing_portal/sessions`;
  var headers = {
    Authorization: `Bearer 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`,
    ContentType: `application/x-xxx-formm-urlencoded`,
  };
  var params = { customer: uuid };
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "X_WWW_FORM_URL_ENCODED",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

/// End stripeSubscription Group Code

/// Helper functions to route to the appropriate API Call.

async function makeApiCall(context, data) {
  var callName = data["callName"] || "";
  var variables = data["variables"] || {};

  const callMap = {
    AddUserCall: _addUserCall,
    GetLedgerCall: _getLedgerCall,
    GetHouseholdCall: _getHouseholdCall,
    EditLedgerEntryAsClearedCall: _editLedgerEntryAsClearedCall,
    GetPaymentSourceCall: _getPaymentSourceCall,
    AddBillCall: _addBillCall,
    AddIncomeCall: _addIncomeCall,
    GetBillsCall: _getBillsCall,
    GetLedgerEntryCall: _getLedgerEntryCall,
    GetSafeToSpendCall: _getSafeToSpendCall,
    GetTotalSpentCall: _getTotalSpentCall,
    AddTransactionCall: _addTransactionCall,
    GetBillPasswordCall: _getBillPasswordCall,
    GetBillCall: _getBillCall,
    GetIncomeCall: _getIncomeCall,
    GetTransactionCall: _getTransactionCall,
    GetFilePathCall: _getFilePathCall,
    GetIncomesCall: _getIncomesCall,
    GetCurrentMonthIncomeCall: _getCurrentMonthIncomeCall,
    SearchTransactionsCall: _searchTransactionsCall,
    GetNotificationsCall: _getNotificationsCall,
    GetNotificationCall: _getNotificationCall,
    EditNotificationCall: _editNotificationCall,
    SubscriptionCheckerCall: _subscriptionCheckerCall,
    GetAllBillsCall: _getAllBillsCall,
    EditBillCall: _editBillCall,
    DeleteBillCall: _deleteBillCall,
    AddInviteCall: _addInviteCall,
    AcceptInviteCall: _acceptInviteCall,
    AddHouseholdCall: _addHouseholdCall,
    EditHouseholdCall: _editHouseholdCall,
    GetHouseholdMembersCall: _getHouseholdMembersCall,
    DeleteMemberFromHouseholdCall: _deleteMemberFromHouseholdCall,
    DeleteHouseholdCall: _deleteHouseholdCall,
    EditIncomeCall: _editIncomeCall,
    DeleteIncomeCall: _deleteIncomeCall,
    GetCategoriesCall: _getCategoriesCall,
    ExportLedgerToCsvCall: _exportLedgerToCsvCall,
    ExportLedgerToQBOCall: _exportLedgerToQBOCall,
    ExportSearchCall: _exportSearchCall,
    EditLedgerEntryCall: _editLedgerEntryCall,
    EditTransactionCall: _editTransactionCall,
    GetUserCall: _getUserCall,
    EditUserCall: _editUserCall,
    DeleteUserCall: _deleteUserCall,
    GetDefaultPaymentSourceCall: _getDefaultPaymentSourceCall,
    SetDefaultPaymentSourceCall: _setDefaultPaymentSourceCall,
    AddPaymentSourceCall: _addPaymentSourceCall,
    EditPaymentSourceCall: _editPaymentSourceCall,
    DeletePaymentSourceCall: _deletePaymentSourceCall,
    DeleteTransactionCall: _deleteTransactionCall,
    CreateCustomerCall: _createCustomerCall,
    CreateCheckoutSessionCall: _createCheckoutSessionCall,
    GetCustomerPortalSessionCall: _getCustomerPortalSessionCall,
  };

  if (!(callName in callMap)) {
    return {
      statusCode: 400,
      error: `API Call "${callName}" not defined as private API.`,
    };
  }

  var apiCall = callMap[callName];
  var response = await apiCall(context, variables);
  return response;
}

async function makeApiRequest({
  method,
  url,
  headers,
  params,
  body,
  returnBody,
  isStreamingApi,
}) {
  return axios
    .request({
      method: method,
      url: url,
      headers: headers,
      params: params,
      responseType: isStreamingApi ? "stream" : "json",
      ...(body && { data: body }),
    })
    .then((response) => {
      return {
        statusCode: response.status,
        headers: response.headers,
        ...(returnBody && { body: response.data }),
        isStreamingApi: isStreamingApi,
      };
    })
    .catch(function (error) {
      return {
        statusCode: error.response.status,
        headers: error.response.headers,
        ...(returnBody && { body: error.response.data }),
        error: error.message,
      };
    });
}

const _unauthenticatedResponse = {
  statusCode: 401,
  headers: {},
  error: "API call requires authentication",
};

function createBody({ headers, params, body, bodyType }) {
  switch (bodyType) {
    case "JSON":
      headers["Content-Type"] = "application/json";
      return body;
    case "TEXT":
      headers["Content-Type"] = "text/plain";
      return body;
    case "X_WWW_FORM_URL_ENCODED":
      headers["Content-Type"] = "application/x-www-form-urlencoded";
      return qs.stringify(params);
  }
}

module.exports = { makeApiCall };
