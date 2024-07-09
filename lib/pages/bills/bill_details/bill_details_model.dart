import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'bill_details_widget.dart' show BillDetailsWidget;
import 'package:flutter/material.dart';

class BillDetailsModel extends FlutterFlowModel<BillDetailsWidget> {
  ///  Local state fields for this page.

  bool url = false;

  bool username = false;

  bool password = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey4 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (deleteBill)] action in IconButton widget.
  ApiCallResponse? deleteBillOutput;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for frequency widget.
  String? frequencyValue;
  FormFieldController<String>? frequencyValueController;
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
  String? _categoryTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fw0vblkf' /* Field is required */,
      );
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    if (!RegExp('^[a-zA-Z\\s]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '789hk5a6' /* Can only be letters */,
      );
    }
    return null;
  }

  // State field(s) for billname widget.
  FocusNode? billnameFocusNode;
  TextEditingController? billnameTextController;
  String? Function(BuildContext, String?)? billnameTextControllerValidator;
  String? _billnameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'walpj0ea' /* Field is required */,
      );
    }

    if (val.length < 4) {
      return FFLocalizations.of(context).getText(
        'f9vakn3n' /* Minimum 4 characters */,
      );
    }

    if (!RegExp('^[a-zA-Z\\s]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '4prb168l' /* Letters and Spaces only */,
      );
    }
    return null;
  }

  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  String? _amountTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'yon22m3m' /* Field is required */,
      );
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }

    if (!RegExp('^\\d+(\\.\\d{2})?\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '9torv574' /* Digits and periods only */,
      );
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
        'kgs2p7jr' /* Field is required */,
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
  // Stores action output result for [Backend Call - API (editBill)] action in Button widget.
  ApiCallResponse? editBillOutput;

  @override
  void initState(BuildContext context) {
    categoryTextControllerValidator = _categoryTextControllerValidator;
    billnameTextControllerValidator = _billnameTextControllerValidator;
    amountTextControllerValidator = _amountTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
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
}
