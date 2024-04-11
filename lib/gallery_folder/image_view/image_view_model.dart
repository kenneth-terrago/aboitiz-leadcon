import '/flutter_flow/flutter_flow_util.dart';
import 'image_view_widget.dart' show ImageViewWidget;
import 'package:flutter/material.dart';

class ImageViewModel extends FlutterFlowModel<ImageViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
