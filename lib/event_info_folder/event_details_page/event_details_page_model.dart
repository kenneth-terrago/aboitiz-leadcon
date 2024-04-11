import '/flutter_flow/flutter_flow_util.dart';
import 'event_details_page_widget.dart' show EventDetailsPageWidget;
import 'package:flutter/material.dart';

class EventDetailsPageModel extends FlutterFlowModel<EventDetailsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
