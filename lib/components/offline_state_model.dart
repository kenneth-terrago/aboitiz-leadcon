import '/components/primary_button2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'offline_state_widget.dart' show OfflineStateWidget;
import 'package:flutter/material.dart';

class OfflineStateModel extends FlutterFlowModel<OfflineStateWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for primaryButton2 component.
  late PrimaryButton2Model primaryButton2Model;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    primaryButton2Model = createModel(context, () => PrimaryButton2Model());
  }

  @override
  void dispose() {
    primaryButton2Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
