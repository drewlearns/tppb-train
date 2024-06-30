import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_notification_widget.dart' show EditNotificationWidget;
import 'package:flutter/material.dart';

class EditNotificationModel extends FlutterFlowModel<EditNotificationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked;
  // State field(s) for BillName widget.
  FocusNode? billNameFocusNode;
  TextEditingController? billNameTextController;
  String? Function(BuildContext, String?)? billNameTextControllerValidator;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode1;
  TextEditingController? amountTextController1;
  String? Function(BuildContext, String?)? amountTextController1Validator;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode2;
  TextEditingController? amountTextController2;
  String? Function(BuildContext, String?)? amountTextController2Validator;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode3;
  TextEditingController? amountTextController3;
  String? Function(BuildContext, String?)? amountTextController3Validator;
  // Stores action output result for [Backend Call - API (editNotification)] action in Button widget.
  ApiCallResponse? editNotificationOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    billNameFocusNode?.dispose();
    billNameTextController?.dispose();

    amountFocusNode1?.dispose();
    amountTextController1?.dispose();

    amountFocusNode2?.dispose();
    amountTextController2?.dispose();

    amountFocusNode3?.dispose();
    amountTextController3?.dispose();
  }
}
