import '/flutter_flow/flutter_flow_util.dart';
import 'add_wallet_widget.dart' show AddWalletWidget;
import 'package:flutter/material.dart';

class AddWalletModel extends FlutterFlowModel<AddWalletWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
