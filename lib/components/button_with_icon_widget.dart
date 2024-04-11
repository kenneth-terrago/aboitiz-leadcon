import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'button_with_icon_model.dart';
export 'button_with_icon_model.dart';

class ButtonWithIconWidget extends StatefulWidget {
  const ButtonWithIconWidget({
    super.key,
    String? buttonText,
    this.buttonIcon,
    required this.onClick,
  }) : buttonText = buttonText ?? 'Add to schedule';

  final String buttonText;
  final Widget? buttonIcon;
  final Future Function()? onClick;

  @override
  State<ButtonWithIconWidget> createState() => _ButtonWithIconWidgetState();
}

class _ButtonWithIconWidgetState extends State<ButtonWithIconWidget> {
  late ButtonWithIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonWithIconModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        await widget.onClick?.call();
      },
      text: widget.buttonText,
      icon: widget.buttonIcon,
      options: FFButtonOptions(
        width: 130.0,
        height: 40.0,
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).secondaryBackground,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Inter',
              color: FlutterFlowTheme.of(context).primary,
              fontSize: 16.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w500,
            ),
        borderSide: BorderSide(
          color: FlutterFlowTheme.of(context).primary,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}
