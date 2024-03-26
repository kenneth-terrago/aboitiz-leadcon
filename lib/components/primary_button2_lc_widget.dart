import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'primary_button2_lc_model.dart';
export 'primary_button2_lc_model.dart';

class PrimaryButton2LcWidget extends StatefulWidget {
  const PrimaryButton2LcWidget({
    super.key,
    String? buttonText,
    this.buttonAction,
  }) : buttonText = buttonText ?? 'Continue';

  final String buttonText;
  final Future Function()? buttonAction;

  @override
  State<PrimaryButton2LcWidget> createState() => _PrimaryButton2LcWidgetState();
}

class _PrimaryButton2LcWidgetState extends State<PrimaryButton2LcWidget> {
  late PrimaryButton2LcModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimaryButton2LcModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FFButtonWidget(
      onPressed: () async {
        await widget.buttonAction?.call();
      },
      text: widget.buttonText,
      options: FFButtonOptions(
        width: 130.0,
        height: 40.0,
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Inter',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
        elevation: 2.0,
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}
