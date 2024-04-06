import '/flutter_flow/flutter_flow_util.dart';
import 'initial_loading_page_widget.dart' show InitialLoadingPageWidget;
import 'package:flutter/material.dart';

class InitialLoadingPageModel
    extends FlutterFlowModel<InitialLoadingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getAppVersion] action in initialLoadingPage widget.
  String? appVersion;
  // Stores action output result for [Custom Action - getExtendedVersionNumber] action in initialLoadingPage widget.
  int? appVerstionInt;
  // Stores action output result for [Custom Action - getExtendedVersionNumber] action in initialLoadingPage widget.
  int? requiredMinVersionInt;
  // Stores action output result for [Custom Action - getExtendedVersionNumber] action in initialLoadingPage widget.
  int? recommendedMinVersionInt;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
