import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sales_page_widget.dart' show SalesPageWidget;
import 'package:flutter/material.dart';

class SalesPageModel extends FlutterFlowModel<SalesPageWidget> {
  ///  Local state fields for this page.

  bool monthlyClicked = false;

  bool annualClicked = false;

  bool foreverClicked = true;

  String monthlyProductid = 'price_1PXL0DJMeGUbw0WoxAAWG9dn';

  String annualProductId = 'price_1PXL0BJMeGUbw0WoipD03nSh';

  String foreverProductId = 'price_1PXL09JMeGUbw0WoMdJ0VNQ3';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (create checkout session)] action in Button widget.
  ApiCallResponse? monthlyCheckOutSessionOutput;
  // Stores action output result for [Backend Call - API (create checkout session)] action in Button widget.
  ApiCallResponse? annuaCheckOutSessionCreatedOutput;
  // Stores action output result for [Backend Call - API (create checkout session)] action in Button widget.
  ApiCallResponse? foreverCheckOutSessionCreated;
  // Stores action output result for [RevenueCat - Purchase] action in Button widget.
  bool? didPurchaseMonthly;
  // Stores action output result for [Backend Call - API (applePurchaseEndpoint)] action in Button widget.
  ApiCallResponse? monthlyUpdateOutput;
  // Stores action output result for [RevenueCat - Purchase] action in Button widget.
  bool? didPurchaseAnnual;
  // Stores action output result for [Backend Call - API (applePurchaseEndpoint)] action in Button widget.
  ApiCallResponse? annuallyUpdateOutput;
  // Stores action output result for [RevenueCat - Purchase] action in Button widget.
  bool? didPurchaseForever;
  // Stores action output result for [Backend Call - API (applePurchaseEndpoint)] action in Button widget.
  ApiCallResponse? foreverUpdateOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
