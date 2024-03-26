import '/flutter_flow/flutter_flow_util.dart';
import 'input_password_widget.dart' show InputPasswordWidget;
import 'package:flutter/material.dart';

class InputPasswordModel extends FlutterFlowModel<InputPasswordWidget> {
  ///  Local state fields for this component.

  String? bodyText;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    passwordFocusNode?.dispose();
    passwordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
