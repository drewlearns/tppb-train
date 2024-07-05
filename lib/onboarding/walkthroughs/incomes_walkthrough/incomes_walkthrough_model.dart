import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'incomes_walkthrough_widget.dart' show IncomesWalkthroughWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class IncomesWalkthroughModel
    extends FlutterFlowModel<IncomesWalkthroughWidget> {
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
