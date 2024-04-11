import '/flutter_flow/flutter_flow_util.dart';
import 'search_field2_widget.dart' show SearchField2Widget;
import 'package:flutter/material.dart';

class SearchField2Model extends FlutterFlowModel<SearchField2Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
