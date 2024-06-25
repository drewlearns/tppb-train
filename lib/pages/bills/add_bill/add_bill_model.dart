import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_bill_widget.dart' show AddBillWidget;
import 'package:flutter/material.dart';

class AddBillModel extends FlutterFlowModel<AddBillWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for HouseholdDropDown widget.
  String? householdDropDownValue;
  FormFieldController<String>? householdDropDownValueController;
  // State field(s) for walletDropDown widget.
  String? walletDropDownValue;
  FormFieldController<String>? walletDropDownValueController;
  // State field(s) for dayOfMonth widget.
  int? dayOfMonthValue;
  FormFieldController<int>? dayOfMonthValueController;
  // State field(s) for frequency widget.
  String? frequencyValue;
  FormFieldController<String>? frequencyValueController;
  // State field(s) for BillName widget.
  FocusNode? billNameFocusNode;
  TextEditingController? billNameTextController;
  String? Function(BuildContext, String?)? billNameTextControllerValidator;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // State field(s) for category widget.
  FocusNode? categoryFocusNode;
  TextEditingController? categoryTextController;
  String? Function(BuildContext, String?)? categoryTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
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
