import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'wallet_walkthrough_widget.dart' show WalletWalkthroughWidget;
import 'package:flutter/material.dart';

class WalletWalkthroughModel extends FlutterFlowModel<WalletWalkthroughWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? walletWalkthroughController;
  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    walletWalkthroughController?.finish();
    unfocusNode.dispose();
  }
}
