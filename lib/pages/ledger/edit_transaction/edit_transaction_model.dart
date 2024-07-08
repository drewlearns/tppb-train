import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_transaction_widget.dart' show EditTransactionWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class EditTransactionModel extends FlutterFlowModel<EditTransactionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (deleteTransaction)] action in IconButton widget.
  ApiCallResponse? apiResultoeb;
  // Stores action output result for [Backend Call - API (deleteLedgerEntry)] action in IconButton widget.
  ApiCallResponse? deleteLedgerEntryOutput;
  // State field(s) for transactionDate widget.
  FocusNode? transactionDateFocusNode;
  TextEditingController? transactionDateTextController;
  String? Function(BuildContext, String?)?
      transactionDateTextControllerValidator;
  String? _transactionDateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'kgs2p7jr' /* Field is required */,
      );
    }

    if (!RegExp(
            '/^\\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01]) ([01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d\$/')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'rcz3lbim' /* Invalid Date */,
      );
    }
    return null;
  }

  DateTime? datePicked;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  String? _amountTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '2tmrb0wk' /* Field is required */,
      );
    }

    if (!RegExp('/^\\d+(\\.\\d+)?\$/').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '4bi5x0xz' /* Digits and period only */,
      );
    }
    return null;
  }

  // State field(s) for category widget.
  FocusNode? categoryFocusNode;
  TextEditingController? categoryTextController;
  String? Function(BuildContext, String?)? categoryTextControllerValidator;
  // State field(s) for tags widget.
  FocusNode? tagsFocusNode;
  TextEditingController? tagsTextController;
  String? Function(BuildContext, String?)? tagsTextControllerValidator;
  String? _tagsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '27hivmws' /* Field is required */,
      );
    }

    if (!RegExp('/^[a-zA-Z]+(,[a-zA-Z]+)*\$/').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'b39jigcg' /* Comma separated list only */,
      );
    }
    return null;
  }

  // State field(s) for Type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  // State field(s) for transactionStatus widget.
  bool? transactionStatusValue;
  FormFieldController<bool>? transactionStatusValueController;
  // State field(s) for household widget.
  String? householdValue;
  FormFieldController<String>? householdValueController;
  // State field(s) for wallet widget.
  String? walletValue;
  FormFieldController<String>? walletValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - imageToBase64String] action in Image widget.
  String? base64Output;
  // Stores action output result for [Backend Call - API (editTransaction)] action in Button widget.
  ApiCallResponse? editTransactionOutput;
  AudioPlayer? soundPlayer1;
  // Stores action output result for [Backend Call - API (editLedgerEntry)] action in Button widget.
  ApiCallResponse? editLedgerEntryOutput;
  AudioPlayer? soundPlayer2;

  @override
  void initState(BuildContext context) {
    transactionDateTextControllerValidator =
        _transactionDateTextControllerValidator;
    amountTextControllerValidator = _amountTextControllerValidator;
    tagsTextControllerValidator = _tagsTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    transactionDateFocusNode?.dispose();
    transactionDateTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();

    categoryFocusNode?.dispose();
    categoryTextController?.dispose();

    tagsFocusNode?.dispose();
    tagsTextController?.dispose();
  }
}
