import '/flutter_flow/flutter_flow_util.dart';
import 'threshold_widget.dart' show ThresholdWidget;
import 'package:flutter/material.dart';

class ThresholdModel extends FlutterFlowModel<ThresholdWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
