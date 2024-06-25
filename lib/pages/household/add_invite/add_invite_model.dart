import '/flutter_flow/flutter_flow_util.dart';
import 'add_invite_widget.dart' show AddInviteWidget;
import 'package:flutter/material.dart';

class AddInviteModel extends FlutterFlowModel<AddInviteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
