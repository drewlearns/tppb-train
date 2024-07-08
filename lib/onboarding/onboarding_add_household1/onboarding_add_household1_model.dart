import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding_add_household1_widget.dart'
    show OnboardingAddHousehold1Widget;
import 'package:flutter/material.dart';

class OnboardingAddHousehold1Model
    extends FlutterFlowModel<OnboardingAddHousehold1Widget> {
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
        'loxsnt8z' /* Field is required */,
      );
    }

    if (!RegExp('/^[a-zA-Z ]+\$/').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'm0mx4uc8' /* Letters and Spaces Only */,
      );
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (addHousehold)] action in Button widget.
  ApiCallResponse? addBudgetOutput;

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
