import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_income_widget.dart' show EditIncomeWidget;
import 'package:flutter/material.dart';

class EditIncomeModel extends FlutterFlowModel<EditIncomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for HouseholdDropDown widget.
  String? householdDropDownValue;
  FormFieldController<String>? householdDropDownValueController;
  // State field(s) for walletDropDown widget.
  String? walletDropDownValue;
  FormFieldController<String>? walletDropDownValueController;
  // State field(s) for IncomeName widget.
  FocusNode? incomeNameFocusNode1;
  TextEditingController? incomeNameTextController1;
  String? Function(BuildContext, String?)? incomeNameTextController1Validator;
  // State field(s) for frequency widget.
  String? frequencyValue;
  FormFieldController<String>? frequencyValueController;
  // State field(s) for IncomeName widget.
  FocusNode? incomeNameFocusNode2;
  TextEditingController? incomeNameTextController2;
  String? Function(BuildContext, String?)? incomeNameTextController2Validator;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // Stores action output result for [Backend Call - API (editIncome)] action in Button widget.
  ApiCallResponse? editIncomeOutput;
  // Stores action output result for [Backend Call - API (deleteIncome)] action in IconButton widget.
  ApiCallResponse? apiResult04o;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    incomeNameFocusNode1?.dispose();
    incomeNameTextController1?.dispose();

    incomeNameFocusNode2?.dispose();
    incomeNameTextController2?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
