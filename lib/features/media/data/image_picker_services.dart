import 'package:flutter/material.dart';
import 'package:gal/gal.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerServices {
  static final picker = ImagePicker();
  static Future<void> takePhoto(BuildContext context) async {
    final image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      await Gal.putImage(image.path);
    }
  }

  static Future<void> takeVideo() async {
    final image = await picker.pickVideo(source: ImageSource.camera);
    if (image != null) {
      await Gal.putVideo(image.path);
    }
  }
}
