import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'bill_details_widget.dart' show BillDetailsWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class BillDetailsModel extends FlutterFlowModel<BillDetailsWidget> {
  ///  Local state fields for this page.

  bool url = false;

  bool username = false;

  bool password = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (deleteBill)] action in IconButton widget.
  ApiCallResponse? deleteBillOutput;
  // State field(s) for dayOfmonth widget.
  int? dayOfmonthValue;
  FormFieldController<int>? dayOfmonthValueController;
  // State field(s) for Household widget.
  String? householdValue;
  FormFieldController<String>? householdValueController;
  // State field(s) for wallet widget.
  String? walletValue;
  FormFieldController<String>? walletValueController;
  // State field(s) for category widget.
  FocusNode? categoryFocusNode;
  TextEditingController? categoryTextController;
  String? Function(BuildContext, String?)? categoryTextControllerValidator;
  // State field(s) for billname widget.
  FocusNode? billnameFocusNode;
  TextEditingController? billnameTextController;
  String? Function(BuildContext, String?)? billnameTextControllerValidator;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for frequency widget.
  String? frequencyValue;
  FormFieldController<String>? frequencyValueController;
  // State field(s) for url widget.
  FocusNode? urlFocusNode;
  TextEditingController? urlTextController;
  String? Function(BuildContext, String?)? urlTextControllerValidator;
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Backend Call - API (editBill)] action in Button widget.
  ApiCallResponse? editBillOutput;
  Completer<ApiCallResponse>? apiRequestCompleter3;
  Completer<ApiCallResponse>? apiRequestCompleter1;
  Completer<ApiCallResponse>? apiRequestCompleter2;
  Completer<ApiCallResponse>? apiRequestCompleter4;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    categoryFocusNode?.dispose();
    categoryTextController?.dispose();

    billnameFocusNode?.dispose();
    billnameTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    urlFocusNode?.dispose();
    urlTextController?.dispose();

    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter4?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
