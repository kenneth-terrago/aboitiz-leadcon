import '/flutter_flow/flutter_flow_util.dart';
import 'event_page_widget.dart' show EventPageWidget;
import 'package:flutter/material.dart';

class EventPageModel extends FlutterFlowModel<EventPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
