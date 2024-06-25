import '/flutter_flow/flutter_flow_util.dart';
import 'export_search_widget.dart' show ExportSearchWidget;
import 'package:flutter/material.dart';

class ExportSearchModel extends FlutterFlowModel<ExportSearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
