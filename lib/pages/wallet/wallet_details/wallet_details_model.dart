import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'wallet_details_widget.dart' show WalletDetailsWidget;
import 'package:flutter/material.dart';

class WalletDetailsModel extends FlutterFlowModel<WalletDetailsWidget> {
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
        'di82jkuk' /* Field is required */,
      );
    }

    if (!RegExp('/^[a-zA-Z ]+\$/').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '1aiwuaz7' /* Must contain letters or spaces... */,
      );
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (editPaymentSource)] action in Button widget.
  ApiCallResponse? editPaymentSourceOutput;
  // Stores action output result for [Backend Call - API (deletePaymentSource)] action in IconButton widget.
  ApiCallResponse? apiResultqh9;

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
