import '/flutter_flow/flutter_flow_util.dart';
import 'edit_income_widget.dart' show EditIncomeWidget;
import 'package:flutter/material.dart';

class EditIncomeModel extends FlutterFlowModel<EditIncomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
