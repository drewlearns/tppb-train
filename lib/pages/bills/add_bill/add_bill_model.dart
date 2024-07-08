import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_bill_widget.dart' show AddBillWidget;
import 'package:flutter/material.dart';

class AddBillModel extends FlutterFlowModel<AddBillWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
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
  // State field(s) for BillName widget.
  FocusNode? billNameFocusNode;
  TextEditingController? billNameTextController;
  String? Function(BuildContext, String?)? billNameTextControllerValidator;
  String? _billNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '6a9cr3sv' /* Field is required */,
      );
    }

    if (!RegExp('/^[a-zA-Z]+\$/').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'q7r79n8n' /* Can only be letters */,
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
        'tlwth8qe' /* Field is required */,
      );
    }

    if (!RegExp('/^\\d+(\\.\\d+)?\$/').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '8jaea9zl' /* Must be a number */,
      );
    }
    return null;
  }

  // State field(s) for category widget.
  FocusNode? categoryFocusNode;
  TextEditingController? categoryTextController;
  String? Function(BuildContext, String?)? categoryTextControllerValidator;
  String? _categoryTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ywmsmw2z' /* Field is required */,
      );
    }

    if (!RegExp('/^[a-zA-Z]+\$/').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'aa7zbrxu' /* Can only be letters */,
      );
    }
    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for url widget.
  FocusNode? urlFocusNode;
  TextEditingController? urlTextController;
  String? Function(BuildContext, String?)? urlTextControllerValidator;
  String? _urlTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'n844qhee' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '41esu6hb' /* Must include https:// */,
      );
    }
    return null;
  }

  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Backend Call - API (addBill)] action in Button widget.
  ApiCallResponse? addBillOutput;

  @override
  void initState(BuildContext context) {
    billNameTextControllerValidator = _billNameTextControllerValidator;
    amountTextControllerValidator = _amountTextControllerValidator;
    categoryTextControllerValidator = _categoryTextControllerValidator;
    urlTextControllerValidator = _urlTextControllerValidator;
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    billNameFocusNode?.dispose();
    billNameTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();

    categoryFocusNode?.dispose();
    categoryTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    urlFocusNode?.dispose();
    urlTextController?.dispose();

    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
