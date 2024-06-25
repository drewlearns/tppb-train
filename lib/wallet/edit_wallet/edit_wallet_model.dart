import '/flutter_flow/flutter_flow_util.dart';
import 'edit_wallet_widget.dart' show EditWalletWidget;
import 'package:flutter/material.dart';

class EditWalletModel extends FlutterFlowModel<EditWalletWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
