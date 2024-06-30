import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

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
  // Stores action output result for [Backend Call - API (create Customer)] action in Button widget.
  ApiCallResponse? stripeSubscriptionUserCreationOutput;
  // Stores action output result for [Backend Call - API (addUser)] action in Button widget.
  ApiCallResponse? addUserOutput;
  // State field(s) for EmailSignIn widget.
  FocusNode? emailSignInFocusNode;
  TextEditingController? emailSignInTextController;
  String? Function(BuildContext, String?)? emailSignInTextControllerValidator;
  // State field(s) for passwordSignIn widget.
  FocusNode? passwordSignInFocusNode;
  TextEditingController? passwordSignInTextController;
  late bool passwordSignInVisibility;
  String? Function(BuildContext, String?)?
      passwordSignInTextControllerValidator;

  @override
  void initState(BuildContext context) {
    newPasswordVisibility = false;
    confirmPasswordVisibility = false;
    passwordSignInVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
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

    emailSignInFocusNode?.dispose();
    emailSignInTextController?.dispose();

    passwordSignInFocusNode?.dispose();
    passwordSignInTextController?.dispose();
  }
}
