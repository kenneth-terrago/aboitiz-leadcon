// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:dio/dio.dart';

Future savePhoto(String url) async {
  var response =
      await Dio().get(url, options: Options(responseType: ResponseType.bytes));
  final result = await ImageGallerySaver.saveImage(
    Uint8List.fromList(response.data),
  );
  return (result);
}
