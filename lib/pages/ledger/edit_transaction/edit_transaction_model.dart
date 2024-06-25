import '/flutter_flow/flutter_flow_util.dart';
import 'edit_transaction_widget.dart' show EditTransactionWidget;
import 'package:flutter/material.dart';

class EditTransactionModel extends FlutterFlowModel<EditTransactionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
