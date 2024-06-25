import '/flutter_flow/flutter_flow_util.dart';
import 'edit_bill_widget.dart' show EditBillWidget;
import 'package:flutter/material.dart';

class EditBillModel extends FlutterFlowModel<EditBillWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
