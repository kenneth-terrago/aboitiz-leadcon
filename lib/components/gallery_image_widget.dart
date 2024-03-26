import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'gallery_image_model.dart';
export 'gallery_image_model.dart';

class GalleryImageWidget extends StatefulWidget {
  const GalleryImageWidget({super.key});

  @override
  State<GalleryImageWidget> createState() => _GalleryImageWidgetState();
}

class _GalleryImageWidgetState extends State<GalleryImageWidget> {
  late GalleryImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GalleryImageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Image.asset(
      'assets/images/ABACgallery.png',
      width: 318.0,
      height: 119.0,
      fit: BoxFit.fill,
    );
  }
}
