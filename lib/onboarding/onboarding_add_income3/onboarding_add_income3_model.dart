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
  // State field(s) for frequency widget.
  String? frequencyValue;
  FormFieldController<String>? frequencyValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for IncomeName widget.
  FocusNode? incomeNameFocusNode;
  TextEditingController? incomeNameTextController;
  String? Function(BuildContext, String?)? incomeNameTextControllerValidator;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // Stores action output result for [Backend Call - API (addIncome)] action in Button widget.
  ApiCallResponse? addIncomeOutput;
  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    incomeNameFocusNode?.dispose();
    incomeNameTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
