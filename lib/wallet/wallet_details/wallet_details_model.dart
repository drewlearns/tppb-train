import '/flutter_flow/flutter_flow_util.dart';
import 'wallet_details_widget.dart' show WalletDetailsWidget;
import 'package:flutter/material.dart';

class WalletDetailsModel extends FlutterFlowModel<WalletDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
