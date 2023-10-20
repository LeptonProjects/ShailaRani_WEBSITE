import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';
import 'package:shaila_rani_website/core/errors/exceptions.dart';

class ImagePickerClass {
  final ImagePicker picker;

  ImagePickerClass({
    required this.picker,
  });
  Future<Uint8List> pickImageGallery() async {
    try {
      XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        return await image.readAsBytes();
      } else {
        throw ImageException();
      }
    } catch (e) {
      throw ImageException();
    }
  }
}
