import '/flutter_flow/flutter_flow_util.dart';
import 'sbu_landing_widget.dart' show SbuLandingWidget;
import 'package:flutter/material.dart';

class SbuLandingModel extends FlutterFlowModel<SbuLandingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
