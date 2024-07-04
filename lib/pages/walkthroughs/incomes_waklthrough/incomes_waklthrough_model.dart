import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'incomes_waklthrough_widget.dart' show IncomesWaklthroughWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class IncomesWaklthroughModel
    extends FlutterFlowModel<IncomesWaklthroughWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? incomesWalkthroughController;
  final unfocusNode = FocusNode();
  // State field(s) for HouseholdDropDown widget.
  String? householdDropDownValue;
  FormFieldController<String>? householdDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    incomesWalkthroughController?.finish();
    unfocusNode.dispose();
  }
}
