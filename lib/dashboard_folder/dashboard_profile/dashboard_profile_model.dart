import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_profile_widget.dart' show DashboardProfileWidget;
import 'package:flutter/material.dart';

class DashboardProfileModel extends FlutterFlowModel<DashboardProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
