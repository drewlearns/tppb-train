import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'export_search_widget.dart' show ExportSearchWidget;
import 'package:flutter/material.dart';

class ExportSearchModel extends FlutterFlowModel<ExportSearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Category widget.
  FocusNode? categoryFocusNode;
  TextEditingController? categoryTextController;
  String? Function(BuildContext, String?)? categoryTextControllerValidator;
  // State field(s) for ReportType widget.
  String? reportTypeValue;
  FormFieldController<String>? reportTypeValueController;
  // Stores action output result for [Backend Call - API (exportSearch)] action in Button widget.
  ApiCallResponse? apiResultfzl;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    categoryFocusNode?.dispose();
    categoryTextController?.dispose();
  }
}
