import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'export_to_q_b_o_widget.dart' show ExportToQBOWidget;
import 'package:flutter/material.dart';

class ExportToQBOModel extends FlutterFlowModel<ExportToQBOWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (exportLedgerToQBO)] action in Button widget.
  ApiCallResponse? apiResultfzl;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
