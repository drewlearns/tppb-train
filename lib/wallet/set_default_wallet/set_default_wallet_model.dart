import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'set_default_wallet_widget.dart' show SetDefaultWalletWidget;
import 'package:flutter/material.dart';

class SetDefaultWalletModel extends FlutterFlowModel<SetDefaultWalletWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (setDefaultPaymentSource)] action in Button widget.
  ApiCallResponse? apiResultc1v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
