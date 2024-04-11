import '/components/input_email_widget.dart';
import '/components/input_password_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'signin_password_new_widget.dart' show SigninPasswordNewWidget;
import 'package:flutter/material.dart';

class SigninPasswordNewModel extends FlutterFlowModel<SigninPasswordNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for inputEmail component.
  late InputEmailModel inputEmailModel;
  // Model for inputPassword component.
  late InputPasswordModel inputPasswordModel;

  @override
  void initState(BuildContext context) {
    inputEmailModel = createModel(context, () => InputEmailModel());
    inputPasswordModel = createModel(context, () => InputPasswordModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    inputEmailModel.dispose();
    inputPasswordModel.dispose();
  }
}
