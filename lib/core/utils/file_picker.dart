// import 'package:file_picker/file_picker.dart';
// import 'package:open_app_file/open_app_file.dart';
// import 'package:shaila_rani_website/core/errors/exceptions.dart';

// class FilePickerClass {
//    PlatformFile? file;

//   FilePickerClass({
//     required this.file,
//   });
//   Future<void> pickFile() async {
//     try {
//       FilePickerResult? result = await FilePicker.platform.pickFiles();

// if (result != null) {
//   file = result.files.first;
//     file == null ? false : OpenAppFile.open(file!.path.toString());

// } else {
//   // User canceled the picker
// }
  
//     } catch (e) {
//       throw ImageException();
//     }
//   }
// }




import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:open_app_file/open_app_file.dart';
import 'package:shaila_rani_website/core/errors/exceptions.dart';

class FilePickerClass {
  PlatformFile? file;

  FilePickerClass({
    required this.file,
  });

  Future<Uint8List?> pickFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null) {
        file = result.files.first;
        if (file != null) {
          await OpenAppFile.open(file!.path.toString());
        
        } else {
          throw ImageException();
        }
      } else {
        // User canceled the picker
        throw ImageException();
      }
    } catch (e) {
      throw ImageException();
    }
    return null;
  }
}
