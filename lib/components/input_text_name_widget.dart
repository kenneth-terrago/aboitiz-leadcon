import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'input_text_name_model.dart';
export 'input_text_name_model.dart';

class InputTextNameWidget extends StatefulWidget {
  const InputTextNameWidget({
    super.key,
    String? labelText,
    String? hintText,
  })  : labelText = labelText ?? 'Name',
        hintText = hintText ?? '';

  final String labelText;
  final String hintText;

  @override
  State<InputTextNameWidget> createState() => _InputTextNameWidgetState();
}

class _InputTextNameWidgetState extends State<InputTextNameWidget> {
  late InputTextNameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InputTextNameModel());

    _model.nameController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();
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
        controller: _model.nameController,
        focusNode: _model.nameFocusNode,
        autofocus: false,
        textCapitalization: TextCapitalization.words,
        obscureText: false,
        decoration: InputDecoration(
          labelText: valueOrDefault<String>(
            widget.labelText,
            'Input field',
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
        ),
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Inter',
              letterSpacing: 0.0,
            ),
        minLines: null,
        keyboardType: TextInputType.name,
        validator: _model.nameControllerValidator.asValidator(context),
      ),
    );
  }
}
