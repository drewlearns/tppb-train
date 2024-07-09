import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding_add_wallet2_widget.dart' show OnboardingAddWallet2Widget;
import 'package:flutter/material.dart';

class OnboardingAddWallet2Model
    extends FlutterFlowModel<OnboardingAddWallet2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'z21h951a' /* Field is required */,
      );
    }

    if (!RegExp('^[a-zA-Z\\s]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'ydwscj6n' /* Letters and Spaces Only */,
      );
    }
    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hqq4kwfk' /* Field is required */,
      );
    }

    if (!RegExp('^\\d+(\\.\\d{2})?\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'jj9n8mlx' /* Digits and periods only */,
      );
    }
    return null;
  }

  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (addPaymentSource)] action in Button widget.
  ApiCallResponse? addPaymentSource;
  // Stores action output result for [Backend Call - API (addTransaction)] action in Button widget.
  ApiCallResponse? addTransactionOutput;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
