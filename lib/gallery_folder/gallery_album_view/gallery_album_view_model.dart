import '/flutter_flow/flutter_flow_util.dart';
import 'gallery_album_view_widget.dart' show GalleryAlbumViewWidget;
import 'package:flutter/material.dart';

class GalleryAlbumViewModel extends FlutterFlowModel<GalleryAlbumViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

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
