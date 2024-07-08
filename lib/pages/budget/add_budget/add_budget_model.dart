import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_budget_widget.dart' show AddBudgetWidget;
import 'package:flutter/material.dart';

class AddBudgetModel extends FlutterFlowModel<AddBudgetWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fl8ul59e' /* Field is required */,
      );
    }

    if (val.length < 4) {
      return FFLocalizations.of(context).getText(
        'wfvydpqd' /* Minimum 4 characters */,
      );
    }

    if (!RegExp('/^[a-zA-Z ]+\$/').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'e9bnxnm4' /* Letters and spaces only */,
      );
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (addHousehold)] action in Button widget.
  ApiCallResponse? apiResultuxl;

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
