import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'mainfeaturecard_button_model.dart';
export 'mainfeaturecard_button_model.dart';

class MainfeaturecardButtonWidget extends StatefulWidget {
  const MainfeaturecardButtonWidget({
    super.key,
    this.icon,
    this.iconColor,
    this.iconfillColor,
  });

  final Widget? icon;
  final Color? iconColor;
  final Color? iconfillColor;

  @override
  State<MainfeaturecardButtonWidget> createState() =>
      _MainfeaturecardButtonWidgetState();
}

class _MainfeaturecardButtonWidgetState
    extends State<MainfeaturecardButtonWidget> {
  late MainfeaturecardButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainfeaturecardButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () {
        print('Button pressed ...');
      },
      text: '',
      icon: widget.icon,
      options: FFButtonOptions(
        width: 32.0,
        height: 32.0,
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: widget.iconfillColor,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Inter',
              color: Colors.white,
              letterSpacing: 0.0,
            ),
        elevation: 2.0,
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(32.0),
      ),
    );
  }
}
