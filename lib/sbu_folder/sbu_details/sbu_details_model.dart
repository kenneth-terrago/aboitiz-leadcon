import '/flutter_flow/flutter_flow_util.dart';
import 'sbu_details_widget.dart' show SbuDetailsWidget;
import 'package:flutter/material.dart';

class SbuDetailsModel extends FlutterFlowModel<SbuDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
