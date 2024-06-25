import '/flutter_flow/flutter_flow_util.dart';
import 'edit_ledger_entry_widget.dart' show EditLedgerEntryWidget;
import 'package:flutter/material.dart';

class EditLedgerEntryModel extends FlutterFlowModel<EditLedgerEntryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
