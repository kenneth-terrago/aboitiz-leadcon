import '/components/offline_state_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'agenda_offline_widget.dart' show AgendaOfflineWidget;
import 'package:flutter/material.dart';

class AgendaOfflineModel extends FlutterFlowModel<AgendaOfflineWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for offlineState component.
  late OfflineStateModel offlineStateModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    offlineStateModel = createModel(context, () => OfflineStateModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    offlineStateModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
