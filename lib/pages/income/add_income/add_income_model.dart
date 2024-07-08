import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_income_widget.dart' show AddIncomeWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AddIncomeModel extends FlutterFlowModel<AddIncomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for HouseholdDropDown widget.
  String? householdDropDownValue;
  FormFieldController<String>? householdDropDownValueController;
  // State field(s) for walletDropDown widget.
  String? walletDropDownValue;
  FormFieldController<String>? walletDropDownValueController;
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
        '6s3fruwu' /* Field is required */,
      );
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }

    if (!RegExp('/^[a-zA-Z ]+\$/').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'd3me51pi' /* Only letters are allowed */,
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
        'xihi7uqu' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
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
