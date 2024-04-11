import '/flutter_flow/flutter_flow_util.dart';
import 'otp_code_widget.dart' show OtpCodeWidget;
import 'package:flutter/material.dart';

class OtpCodeModel extends FlutterFlowModel<OtpCodeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
