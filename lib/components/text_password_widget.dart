import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'text_password_model.dart';
export 'text_password_model.dart';

class TextPasswordWidget extends StatefulWidget {
  const TextPasswordWidget({
    super.key,
    String? label,
  }) : label = label ?? 'Label here';

  final String label;

  @override
  State<TextPasswordWidget> createState() => _TextPasswordWidgetState();
}

class _TextPasswordWidgetState extends State<TextPasswordWidget> {
  late TextPasswordModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextPasswordModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            widget.label,
            textAlign: TextAlign.start,
            style: GoogleFonts.getFont(
              'Inter',
              fontWeight: FontWeight.normal,
              fontSize: 14.0,
            ),
          ),
          TextFormField(
            controller: _model.textController,
            focusNode: _model.textFieldFocusNode,
            autofocus: true,
            obscureText: !_model.passwordVisibility,
            decoration: InputDecoration(
              hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFB7B9C0),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(4.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0x00000000),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(4.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0x00000000),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(4.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0x00000000),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(4.0),
              ),
              filled: true,
              fillColor: Colors.white,
              suffixIcon: InkWell(
                onTap: () => setState(
                  () => _model.passwordVisibility = !_model.passwordVisibility,
                ),
                focusNode: FocusNode(skipTraversal: true),
                child: Icon(
                  _model.passwordVisibility
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: const Color(0xCD101213),
                  size: 22.0,
                ),
              ),
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
            minLines: null,
            validator: _model.textControllerValidator.asValidator(context),
          ),
        ],
      ),
    );
  }
}
