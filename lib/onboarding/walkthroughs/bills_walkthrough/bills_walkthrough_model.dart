import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'bills_walkthrough_widget.dart' show BillsWalkthroughWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class BillsWalkthroughModel extends FlutterFlowModel<BillsWalkthroughWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? billsWalkthroughController;
  final unfocusNode = FocusNode();
  // State field(s) for HouseholdDropDown widget.
  String? householdDropDownValue;
  FormFieldController<String>? householdDropDownValueController;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    billsWalkthroughController?.finish();
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
