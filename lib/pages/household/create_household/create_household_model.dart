import '/flutter_flow/flutter_flow_util.dart';
import 'create_household_widget.dart' show CreateHouseholdWidget;
import 'package:flutter/material.dart';

class CreateHouseholdModel extends FlutterFlowModel<CreateHouseholdWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
