import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'search_field2_model.dart';
export 'search_field2_model.dart';

class SearchField2Widget extends StatefulWidget {
  const SearchField2Widget({
    super.key,
    String? hintText,
  }) : hintText = hintText ?? 'Search album';

  final String hintText;

  @override
  State<SearchField2Widget> createState() => _SearchField2WidgetState();
}

class _SearchField2WidgetState extends State<SearchField2Widget> {
  late SearchField2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchField2Model());

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
    return TextFormField(
      controller: _model.textController,
      focusNode: _model.textFieldFocusNode,
      autofocus: true,
      obscureText: false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: GoogleFonts.getFont(
          'Inter',
          color: const Color(0xA2000000),
          fontWeight: FontWeight.normal,
          fontSize: 16.0,
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
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Inter',
            letterSpacing: 0.0,
          ),
      minLines: null,
      validator: _model.textControllerValidator.asValidator(context),
    );
  }
}
