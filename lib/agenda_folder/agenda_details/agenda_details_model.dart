import '/flutter_flow/flutter_flow_util.dart';
import 'agenda_details_widget.dart' show AgendaDetailsWidget;
import 'package:flutter/material.dart';

class AgendaDetailsModel extends FlutterFlowModel<AgendaDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
