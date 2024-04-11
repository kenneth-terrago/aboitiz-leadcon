import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'otp_code_lc_model.dart';
export 'otp_code_lc_model.dart';

class OtpCodeLcWidget extends StatefulWidget {
  const OtpCodeLcWidget({super.key});

  @override
  State<OtpCodeLcWidget> createState() => _OtpCodeLcWidgetState();
}

class _OtpCodeLcWidgetState extends State<OtpCodeLcWidget> {
  late OtpCodeLcModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpCodeLcModel());
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
      child: PinCodeTextField(
        autoDisposeControllers: false,
        appContext: context,
        length: 6,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Inter',
              color: FlutterFlowTheme.of(context).secondary,
              letterSpacing: 0.0,
            ),
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        enableActiveFill: false,
        autoFocus: true,
        enablePinAutofill: true,
        errorTextSpace: 16.0,
        showCursor: true,
        cursorColor: FlutterFlowTheme.of(context).primary,
        obscureText: false,
        pinTheme: PinTheme(
          fieldHeight: 80.0,
          fieldWidth: 48.0,
          borderWidth: 2.0,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0),
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          ),
          shape: PinCodeFieldShape.underline,
          activeColor: FlutterFlowTheme.of(context).secondary,
          inactiveColor: FlutterFlowTheme.of(context).gray200,
          selectedColor: FlutterFlowTheme.of(context).primary,
          activeFillColor: FlutterFlowTheme.of(context).secondary,
          inactiveFillColor: FlutterFlowTheme.of(context).gray200,
          selectedFillColor: FlutterFlowTheme.of(context).primary,
        ),
        controller: _model.pinCodeController,
        onChanged: (_) {},
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: _model.pinCodeControllerValidator.asValidator(context),
      ),
    );
  }
}
