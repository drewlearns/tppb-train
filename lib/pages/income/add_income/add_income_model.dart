import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_income_widget.dart' show AddIncomeWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AddIncomeModel extends FlutterFlowModel<AddIncomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for HouseholdDropDown widget.
  String? householdDropDownValue;
  FormFieldController<String>? householdDropDownValueController;
  // State field(s) for walletDropDown widget.
  String? walletDropDownValue;
  FormFieldController<String>? walletDropDownValueController;
  DateTime? datePicked;
  // State field(s) for frequency widget.
  String? frequencyValue;
  FormFieldController<String>? frequencyValueController;
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
