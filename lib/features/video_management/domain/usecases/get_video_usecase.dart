import 'package:dartz/dartz.dart';
import 'package:shaila_rani_website/core/errors/failures.dart';
import 'package:shaila_rani_website/core/usecase/usecase.dart';
import 'package:shaila_rani_website/features/video_management/domain/entity/video_entity.dart';
import 'package:shaila_rani_website/features/video_management/domain/repository/video_repository.dart';

class GetVideoUseCase extends UseCase<VideoEntity, NoParams> {
  final VideoRepository repo;

  GetVideoUseCase({
    required this.repo,
  });
  @override
  Future<Either<Failure, VideoEntity>> call(NoParams params) async {
    return await repo.getAllVideos();
  }
}
