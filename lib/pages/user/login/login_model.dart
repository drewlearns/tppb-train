import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8bq485l4' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '5bcg2ple' /* Invalid Email Address */,
      );
    }
    return null;
  }

  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  String? _firstNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zntao51q' /* Field is required */,
      );
    }

    if (!RegExp('^[a-zA-Z\\s]+\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  String? _lastNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'buhed2fz' /* Field is required */,
      );
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    if (!RegExp('^[a-zA-Z\\s]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '20sdlf8a' /* Invalid Last Name */,
      );
    }
    return null;
  }

  // State field(s) for newPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  String? _newPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'b26444si' /* Field is required */,
      );
    }

    if (val.length < 8) {
      return FFLocalizations.of(context).getText(
        'p0huck1b' /* Minimum 8 Characters */,
      );
    }

    if (!RegExp(
            '^(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#\$%^&*()_+{}\":;\\\'<>?,.\\[\\]])[A-Za-z\\d!@#\$%^&*()_+{}\":;\\\'<>?,.\\[\\]]{8,}\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'l4zryvgb' /* 1 special character, 1 upper c... */,
      );
    }
    return null;
  }

  // State field(s) for confirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  String? _confirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fp7szej1' /* Field is required */,
      );
    }

    return null;
  }

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
    emailTextControllerValidator = _emailTextControllerValidator;
    firstNameTextControllerValidator = _firstNameTextControllerValidator;
    lastNameTextControllerValidator = _lastNameTextControllerValidator;
    newPasswordVisibility = false;
    newPasswordTextControllerValidator = _newPasswordTextControllerValidator;
    confirmPasswordVisibility = false;
    confirmPasswordTextControllerValidator =
        _confirmPasswordTextControllerValidator;
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
