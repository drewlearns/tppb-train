import '/flutter_flow/flutter_flow_util.dart';
import 'bill_details_widget.dart' show BillDetailsWidget;
import 'package:flutter/material.dart';

class BillDetailsModel extends FlutterFlowModel<BillDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
