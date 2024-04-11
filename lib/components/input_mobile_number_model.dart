import '/flutter_flow/flutter_flow_util.dart';
import 'input_mobile_number_widget.dart' show InputMobileNumberWidget;
import 'package:flutter/material.dart';

class InputMobileNumberModel extends FlutterFlowModel<InputMobileNumberWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for mobileNumber widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberController;
  String? Function(BuildContext, String?)? mobileNumberControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    mobileNumberFocusNode?.dispose();
    mobileNumberController?.dispose();
  }
}
