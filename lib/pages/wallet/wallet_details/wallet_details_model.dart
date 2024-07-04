import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'wallet_details_widget.dart' show WalletDetailsWidget;
import 'package:flutter/material.dart';

class WalletDetailsModel extends FlutterFlowModel<WalletDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (editPaymentSource)] action in Button widget.
  ApiCallResponse? editPaymentSourceOutput;
  // Stores action output result for [Backend Call - API (deletePaymentSource)] action in IconButton widget.
  ApiCallResponse? apiResultqh9;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
