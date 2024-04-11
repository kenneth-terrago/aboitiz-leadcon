import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'input_password_model.dart';
export 'input_password_model.dart';

class InputPasswordWidget extends StatefulWidget {
  const InputPasswordWidget({
    super.key,
    String? labelText,
    String? hintText,
  })  : labelText = labelText ?? 'Password',
        hintText = hintText ?? '';

  final String labelText;
  final String hintText;

  @override
  State<InputPasswordWidget> createState() => _InputPasswordWidgetState();
}

class _InputPasswordWidgetState extends State<InputPasswordWidget> {
  late InputPasswordModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InputPasswordModel());

    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
      child: TextFormField(
        controller: _model.passwordController,
        focusNode: _model.passwordFocusNode,
        autofocus: false,
        textCapitalization: TextCapitalization.none,
        obscureText: !_model.passwordVisibility,
        decoration: InputDecoration(
          labelText: valueOrDefault<String>(
            widget.labelText,
            'Address',
          ),
          labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Inter',
                color: FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
              ),
          hintText: widget.hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).gray200,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(6.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primary,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(6.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).destructive,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(6.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).destructive,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(6.0),
          ),
          suffixIcon: InkWell(
            onTap: () => setState(
              () => _model.passwordVisibility = !_model.passwordVisibility,
            ),
            focusNode: FocusNode(skipTraversal: true),
            child: Icon(
              _model.passwordVisibility
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 22.0,
            ),
          ),
        ),
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Inter',
              letterSpacing: 0.0,
            ),
        minLines: null,
        keyboardType: TextInputType.visiblePassword,
        validator: _model.passwordControllerValidator.asValidator(context),
      ),
    );
  }
}
