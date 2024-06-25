import '/flutter_flow/flutter_flow_util.dart';
import 'wallets_widget.dart' show WalletsWidget;
import 'package:flutter/material.dart';

class WalletsModel extends FlutterFlowModel<WalletsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
