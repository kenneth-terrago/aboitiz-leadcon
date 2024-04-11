import '/flutter_flow/flutter_flow_util.dart';
import 'terms_page_widget.dart' show TermsPageWidget;
import 'package:flutter/material.dart';

class TermsPageModel extends FlutterFlowModel<TermsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
