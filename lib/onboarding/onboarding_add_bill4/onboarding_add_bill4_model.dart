import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'onboarding_add_bill4_widget.dart' show OnboardingAddBill4Widget;
import 'package:flutter/material.dart';

class OnboardingAddBill4Model
    extends FlutterFlowModel<OnboardingAddBill4Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
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
        'q3n63g0e' /* Field is required */,
      );
    }

    if (!RegExp('^[a-zA-Z\\s]+\$').hasMatch(val)) {
      return 'Invalid text';
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
        '52z0noz8' /* Field is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ox3h1038' /* Minimum 1 digit */,
      );
    }

    if (!RegExp('^\\d+(\\.\\d{2})?\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'uc89dqwn' /* Only digits */,
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
        'moxpih9v' /* Field is required */,
      );
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '914zt6qq' /* Field is required */,
      );
    }

    return null;
  }

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
  // Stores action output result for [Backend Call - API (addBill)] action in Button widget.
  ApiCallResponse? addBillOutput;

  @override
  void initState(BuildContext context) {
    billNameTextControllerValidator = _billNameTextControllerValidator;
    amountTextControllerValidator = _amountTextControllerValidator;
    categoryTextControllerValidator = _categoryTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
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
