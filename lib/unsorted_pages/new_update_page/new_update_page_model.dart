import '/flutter_flow/flutter_flow_util.dart';
import 'new_update_page_widget.dart' show NewUpdatePageWidget;
import 'package:flutter/material.dart';

class NewUpdatePageModel extends FlutterFlowModel<NewUpdatePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
