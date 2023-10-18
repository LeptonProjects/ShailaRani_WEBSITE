import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:shaila_rani_website/core/errors/failures.dart';
import 'package:shaila_rani_website/features/video_management/domain/entity/video_entity.dart';

abstract class VideoRepository {
  Future<Either<Failure, List<VideoEntity>>> getAllVideos();
  Future<Either<Failure, Unit>> create(VideoEntity entity);
  Future<Either<Failure, Uint8List>> pickImageFromGallery();
  Future<Either<Failure, String>> imageRemoteUpload(Uint8List image);
}
