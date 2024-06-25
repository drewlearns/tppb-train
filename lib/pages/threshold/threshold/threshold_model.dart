import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'threshold_widget.dart' show ThresholdWidget;
import 'package:flutter/material.dart';

class ThresholdModel extends FlutterFlowModel<ThresholdWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for HouseholdDropDown widget.
  String? householdDropDownValue;
  FormFieldController<String>? householdDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
