import '/flutter_flow/flutter_flow_util.dart';
import 'income_details_widget.dart' show IncomeDetailsWidget;
import 'package:flutter/material.dart';

class IncomeDetailsModel extends FlutterFlowModel<IncomeDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
