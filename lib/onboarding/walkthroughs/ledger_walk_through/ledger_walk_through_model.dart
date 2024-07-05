import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ledger_walk_through_widget.dart' show LedgerWalkThroughWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class LedgerWalkThroughModel extends FlutterFlowModel<LedgerWalkThroughWidget> {
  ///  Local state fields for this page.

  bool filterClicked = false;

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? ledgerWalkthroughController;
  final unfocusNode = FocusNode();
  // State field(s) for HouseholdDropDown widget.
  String? householdDropDownValue;
  FormFieldController<String>? householdDropDownValueController;
  // State field(s) for ThisMonthUpToToday widget.
  bool? thisMonthUpToTodayValue;
  // State field(s) for ThisMonthFull widget.
  bool? thisMonthFullValue;
  // State field(s) for ClearedTransactionsOnly widget.
  bool? clearedTransactionsOnlyValue;
  // State field(s) for MonthDropDown widget.
  int? monthDropDownValue;
  FormFieldController<int>? monthDropDownValueController;
  // State field(s) for YearDropDown widget.
  int? yearDropDownValue;
  FormFieldController<int>? yearDropDownValueController;
  // State field(s) for Slider widget.
  double? sliderValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ledgerWalkthroughController?.finish();
    unfocusNode.dispose();
  }
}
