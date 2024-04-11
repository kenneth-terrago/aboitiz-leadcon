import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'input_email_model.dart';
export 'input_email_model.dart';

class InputEmailWidget extends StatefulWidget {
  const InputEmailWidget({
    super.key,
    String? labelText,
    String? hintText,
    this.initialValue,
    bool? isEditable,
  })  : labelText = labelText ?? 'Email address',
        hintText = hintText ?? '',
        isEditable = isEditable ?? true;

  final String labelText;
  final String hintText;
  final String? initialValue;
  final bool isEditable;

  @override
  State<InputEmailWidget> createState() => _InputEmailWidgetState();
}

class _InputEmailWidgetState extends State<InputEmailWidget> {
  late InputEmailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InputEmailModel());

    _model.emailAddressController ??=
        TextEditingController(text: widget.initialValue);
    _model.emailAddressFocusNode ??= FocusNode();
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
        controller: _model.emailAddressController,
        focusNode: _model.emailAddressFocusNode,
        autofocus: false,
        readOnly: !widget.isEditable,
        obscureText: false,
        decoration: InputDecoration(
          labelText: widget.labelText,
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
        ),
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Inter',
              letterSpacing: 0.0,
            ),
        minLines: null,
        keyboardType: TextInputType.emailAddress,
        validator: _model.emailAddressControllerValidator.asValidator(context),
      ),
    );
  }
}
