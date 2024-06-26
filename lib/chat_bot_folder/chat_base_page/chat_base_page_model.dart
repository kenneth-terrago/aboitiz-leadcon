import '/flutter_flow/flutter_flow_util.dart';
import 'chat_base_page_widget.dart' show ChatBasePageWidget;
import 'package:flutter/material.dart';

class ChatBasePageModel extends FlutterFlowModel<ChatBasePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
