import '/flutter_flow/flutter_flow_util.dart';
import 'input_text_name_widget.dart' show InputTextNameWidget;
import 'package:flutter/material.dart';

class InputTextNameModel extends FlutterFlowModel<InputTextNameWidget> {
  ///  Local state fields for this component.

  String? bodyText;

  ///  State fields for stateful widgets in this component.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
