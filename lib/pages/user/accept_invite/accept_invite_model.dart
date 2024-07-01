import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'accept_invite_widget.dart' show AcceptInviteWidget;
import 'package:flutter/material.dart';

class AcceptInviteModel extends FlutterFlowModel<AcceptInviteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for inviteCode widget.
  FocusNode? inviteCodeFocusNode;
  TextEditingController? inviteCodeTextController;
  String? Function(BuildContext, String?)? inviteCodeTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for newPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  // State field(s) for confirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  // State field(s) for MailOptIn widget.
  bool? mailOptInValue;
  // Stores action output result for [Backend Call - API (acceptInvite)] action in Button widget.
  ApiCallResponse? acceptInviteOutput;
  // Stores action output result for [Backend Call - API (create Customer)] action in Button widget.
  ApiCallResponse? stripeSubscriptionUserCreationOutput;

  @override
  void initState(BuildContext context) {
    newPasswordVisibility = false;
    confirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    inviteCodeFocusNode?.dispose();
    inviteCodeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();
  }
}
