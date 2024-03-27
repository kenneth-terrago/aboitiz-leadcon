import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'input_mobile_number_model.dart';
export 'input_mobile_number_model.dart';

class InputMobileNumberWidget extends StatefulWidget {
  const InputMobileNumberWidget({
    super.key,
    String? labelText,
    String? hintText,
  })  : labelText = labelText ?? 'Mobile number',
        hintText = hintText ?? '';

  final String labelText;
  final String hintText;

  @override
  State<InputMobileNumberWidget> createState() =>
      _InputMobileNumberWidgetState();
}

class _InputMobileNumberWidgetState extends State<InputMobileNumberWidget> {
  late InputMobileNumberModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InputMobileNumberModel());

    _model.mobileNumberController ??= TextEditingController();
    _model.mobileNumberFocusNode ??= FocusNode();
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
        controller: _model.mobileNumberController,
        focusNode: _model.mobileNumberFocusNode,
        textCapitalization: TextCapitalization.none,
        obscureText: false,
        decoration: InputDecoration(
          labelText: valueOrDefault<String>(
            widget.labelText,
            'Address',
          ),
          labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Inter',
                color: FlutterFlowTheme.of(context).secondaryText,
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
        style: FlutterFlowTheme.of(context).bodyMedium,
        keyboardType: TextInputType.phone,
        validator: _model.mobileNumberControllerValidator.asValidator(context),
      ),
    );
  }
}
