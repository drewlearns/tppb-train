import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_notification_widget.dart' show EditNotificationWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditNotificationModel extends FlutterFlowModel<EditNotificationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
  // State field(s) for BillName widget.
  FocusNode? billNameFocusNode;
  TextEditingController? billNameTextController;
  String? Function(BuildContext, String?)? billNameTextControllerValidator;
  String? _billNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'wflyc8v9' /* Field is required */,
      );
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }

    if (!RegExp('/^[a-zA-Z ]+\$/').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'hgzl1cjz' /* Letters and spaces only */,
      );
    }
    return null;
  }

  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // State field(s) for Amount widget.
  String? amountValue1;
  FormFieldController<String>? amountValueController1;
  // State field(s) for Amount widget.
  String? amountValue2;
  FormFieldController<String>? amountValueController2;
  // Stores action output result for [Backend Call - API (editNotification)] action in Button widget.
  ApiCallResponse? editNotificationOutput;

  @override
  void initState(BuildContext context) {
    billNameTextControllerValidator = _billNameTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    billNameFocusNode?.dispose();
    billNameTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
