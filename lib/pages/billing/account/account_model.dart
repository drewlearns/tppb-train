import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'account_widget.dart' show AccountWidget;
import 'package:flutter/material.dart';

class AccountModel extends FlutterFlowModel<AccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (subscriptionChecker)] action in invitationsContainer widget.
  ApiCallResponse? subscriptionCheckerOutput2;
  // Stores action output result for [Backend Call - API (subscriptionChecker)] action in NotificationsRow widget.
  ApiCallResponse? subscriptionCheckerOutput1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
