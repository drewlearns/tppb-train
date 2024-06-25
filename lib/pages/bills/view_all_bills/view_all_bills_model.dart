import '/flutter_flow/flutter_flow_util.dart';
import 'view_all_bills_widget.dart' show ViewAllBillsWidget;
import 'package:flutter/material.dart';

class ViewAllBillsModel extends FlutterFlowModel<ViewAllBillsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
