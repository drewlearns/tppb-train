import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'export_to_c_s_v_widget.dart' show ExportToCSVWidget;
import 'package:flutter/material.dart';

class ExportToCSVModel extends FlutterFlowModel<ExportToCSVWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (exportLedgerToCsv)] action in Button widget.
  ApiCallResponse? exportLedgerToCsvOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
