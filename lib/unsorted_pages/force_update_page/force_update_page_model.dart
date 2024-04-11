import '/flutter_flow/flutter_flow_util.dart';
import 'force_update_page_widget.dart' show ForceUpdatePageWidget;
import 'package:flutter/material.dart';

class ForceUpdatePageModel extends FlutterFlowModel<ForceUpdatePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
