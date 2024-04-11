import '/flutter_flow/flutter_flow_util.dart';
import 'agenda_page_widget.dart' show AgendaPageWidget;
import 'package:flutter/material.dart';

class AgendaPageModel extends FlutterFlowModel<AgendaPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
