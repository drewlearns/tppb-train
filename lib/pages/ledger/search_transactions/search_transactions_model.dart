import '/flutter_flow/flutter_flow_util.dart';
import 'search_transactions_widget.dart' show SearchTransactionsWidget;
import 'package:flutter/material.dart';

class SearchTransactionsModel
    extends FlutterFlowModel<SearchTransactionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
