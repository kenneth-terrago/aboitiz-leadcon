import '/flutter_flow/flutter_flow_util.dart';
import 'web_page_widget.dart' show WebPageWidget;
import 'package:flutter/material.dart';

class WebPageModel extends FlutterFlowModel<WebPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
