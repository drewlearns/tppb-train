import '/flutter_flow/flutter_flow_util.dart';
import 'add_transaction_widget.dart' show AddTransactionWidget;
import 'package:flutter/material.dart';

class AddTransactionModel extends FlutterFlowModel<AddTransactionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
