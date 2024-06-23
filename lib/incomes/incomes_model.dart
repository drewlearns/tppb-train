import '/flutter_flow/flutter_flow_util.dart';
import 'incomes_widget.dart' show IncomesWidget;
import 'package:flutter/material.dart';

class IncomesModel extends FlutterFlowModel<IncomesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
