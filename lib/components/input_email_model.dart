import '/flutter_flow/flutter_flow_util.dart';
import 'input_email_widget.dart' show InputEmailWidget;
import 'package:flutter/material.dart';

class InputEmailModel extends FlutterFlowModel<InputEmailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();
  }
}
