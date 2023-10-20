import 'dart:typed_data';

import 'package:shaila_rani_website/core/errors/exceptions.dart';

import '../../../../core/utils/image_picker.dart';

abstract class LocalDataSource {
  Future<Uint8List> getImage();
}

class LocalDataSourceImpl implements LocalDataSource {
  final ImagePickerClass imagePickerClass;

  LocalDataSourceImpl({
    required this.imagePickerClass,
  });
  @override
  Future<Uint8List> getImage() async {
    try {
      final Uint8List data = await imagePickerClass.pickImageGallery();
      return data;
    } on ImageException {
      throw ImageException();
    }
  }
}
