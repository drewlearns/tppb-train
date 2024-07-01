import '/flutter_flow/flutter_flow_util.dart';
import 'options_widget.dart' show OptionsWidget;
import 'package:flutter/material.dart';

class OptionsModel extends FlutterFlowModel<OptionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
