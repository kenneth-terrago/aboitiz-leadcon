import '/components/primary_button2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'register_modal_widget.dart' show RegisterModalWidget;
import 'package:flutter/material.dart';

class RegisterModalModel extends FlutterFlowModel<RegisterModalWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for primaryButton2 component.
  late PrimaryButton2Model primaryButton2Model;

  @override
  void initState(BuildContext context) {
    primaryButton2Model = createModel(context, () => PrimaryButton2Model());
  }

  @override
  void dispose() {
    primaryButton2Model.dispose();
  }
}
