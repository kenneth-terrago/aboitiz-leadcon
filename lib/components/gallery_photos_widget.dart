import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'gallery_photos_model.dart';
export 'gallery_photos_model.dart';

class GalleryPhotosWidget extends StatefulWidget {
  const GalleryPhotosWidget({
    super.key,
    this.galleryImage,
  });

  final String? galleryImage;

  @override
  State<GalleryPhotosWidget> createState() => _GalleryPhotosWidgetState();
}

class _GalleryPhotosWidgetState extends State<GalleryPhotosWidget> {
  late GalleryPhotosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GalleryPhotosModel());
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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Image.network(
                    random_data.randomImageUrl(
                      0,
                      0,
                    ),
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Image.network(
                    random_data.randomImageUrl(
                      0,
                      0,
                    ),
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
