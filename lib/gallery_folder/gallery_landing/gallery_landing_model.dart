import '/flutter_flow/flutter_flow_util.dart';
import 'gallery_landing_widget.dart' show GalleryLandingWidget;
import 'package:flutter/material.dart';

class GalleryLandingModel extends FlutterFlowModel<GalleryLandingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
