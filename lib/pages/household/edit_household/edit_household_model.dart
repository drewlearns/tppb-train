import '/flutter_flow/flutter_flow_util.dart';
import 'edit_household_widget.dart' show EditHouseholdWidget;
import 'package:flutter/material.dart';

class EditHouseholdModel extends FlutterFlowModel<EditHouseholdWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
