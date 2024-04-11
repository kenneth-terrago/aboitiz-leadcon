import '/flutter_flow/flutter_flow_util.dart';
import 'otp_code_lc_widget.dart' show OtpCodeLcWidget;
import 'package:flutter/material.dart';

class OtpCodeLcModel extends FlutterFlowModel<OtpCodeLcWidget> {
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
