import '/flutter_flow/flutter_flow_util.dart';
import 'chatbot_page_widget.dart' show ChatbotPageWidget;
import 'package:flutter/material.dart';

class ChatbotPageModel extends FlutterFlowModel<ChatbotPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
