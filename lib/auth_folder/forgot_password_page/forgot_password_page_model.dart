import '/components/input_email_widget.dart';
import '/components/primary_button2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_password_page_widget.dart' show ForgotPasswordPageWidget;
import 'package:flutter/material.dart';

class ForgotPasswordPageModel
    extends FlutterFlowModel<ForgotPasswordPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for inputEmail component.
  late InputEmailModel inputEmailModel;
  // Model for primaryButton2 component.
  late PrimaryButton2Model primaryButton2Model;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    inputEmailModel = createModel(context, () => InputEmailModel());
    primaryButton2Model = createModel(context, () => PrimaryButton2Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    inputEmailModel.dispose();
    primaryButton2Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
