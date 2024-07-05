import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding_add_household1_widget.dart'
    show OnboardingAddHousehold1Widget;
import 'package:flutter/material.dart';

class OnboardingAddHousehold1Model
    extends FlutterFlowModel<OnboardingAddHousehold1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (addHousehold)] action in Button widget.
  ApiCallResponse? addBudgetOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
