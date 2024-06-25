import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'ledger_widget.dart' show LedgerWidget;
import 'package:flutter/material.dart';

class LedgerModel extends FlutterFlowModel<LedgerWidget> {
  ///  Local state fields for this page.

  bool filterClicked = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getHousehold)] action in Ledger widget.
  ApiCallResponse? gethouseholdOutput;
  Completer<ApiCallResponse>? apiRequestCompleter;
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
  // Stores action output result for [Backend Call - API (editLedgerEntryAsCleared)] action in IconButton widget.
  ApiCallResponse? editLedgerEntryAsClearedOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
