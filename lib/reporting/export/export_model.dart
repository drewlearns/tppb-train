import '/flutter_flow/flutter_flow_util.dart';
import 'export_widget.dart' show ExportWidget;
import 'package:flutter/material.dart';

class ExportModel extends FlutterFlowModel<ExportWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
