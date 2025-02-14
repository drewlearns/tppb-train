import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'transaction_details_widget.dart' show TransactionDetailsWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class TransactionDetailsModel
    extends FlutterFlowModel<TransactionDetailsWidget> {
  ///  Local state fields for this page.

  bool revealPassword = false;

  bool copyURL = false;

  bool copyUserName = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (editLedgerEntryAsCleared)] action in IconButton widget.
  ApiCallResponse? apiResultnnq;
  AudioPlayer? soundPlayer;
  Completer<ApiCallResponse>? apiRequestCompleter;

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
