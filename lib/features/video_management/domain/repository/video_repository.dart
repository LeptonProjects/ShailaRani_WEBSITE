import 'package:dartz/dartz.dart';
import 'package:shaila_rani_website/core/errors/failures.dart';
import 'package:shaila_rani_website/features/video_management/domain/entity/video_entity.dart';

abstract class VideoRepository {
  Future<Either<Failure, VideoEntity>> getAllVideos();
}
