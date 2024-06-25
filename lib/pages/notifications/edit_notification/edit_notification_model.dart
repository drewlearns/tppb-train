import '/flutter_flow/flutter_flow_util.dart';
import 'edit_notification_widget.dart' show EditNotificationWidget;
import 'package:flutter/material.dart';

class EditNotificationModel extends FlutterFlowModel<EditNotificationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
