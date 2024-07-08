import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'onboarding_add_income3_widget.dart' show OnboardingAddIncome3Widget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class OnboardingAddIncome3Model
    extends FlutterFlowModel<OnboardingAddIncome3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for frequency widget.
  String? frequencyValue;
  FormFieldController<String>? frequencyValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for IncomeName widget.
  FocusNode? incomeNameFocusNode;
  TextEditingController? incomeNameTextController;
  String? Function(BuildContext, String?)? incomeNameTextControllerValidator;
  String? _incomeNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hbl7nexd' /* Field is required */,
      );
    }

    if (!RegExp('/^[a-zA-Z ]+\$/').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'pls7oi2q' /* Letters and spaces only. */,
      );
    }
    return null;
  }

  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  String? _amountTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'q3n63g0e' /* Field is required */,
      );
    }

    if (!RegExp('/^\\d+(\\.\\d+)?\$/').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'fmopkyle' /* Digits and periods only */,
      );
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (addIncome)] action in Button widget.
  ApiCallResponse? addIncomeOutput;
  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {
    incomeNameTextControllerValidator = _incomeNameTextControllerValidator;
    amountTextControllerValidator = _amountTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    incomeNameFocusNode?.dispose();
    incomeNameTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
