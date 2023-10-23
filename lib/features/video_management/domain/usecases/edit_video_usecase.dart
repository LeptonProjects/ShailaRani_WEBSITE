import 'package:dartz/dartz.dart';
import 'package:shaila_rani_website/core/errors/failures.dart';
import 'package:shaila_rani_website/core/usecase/usecase.dart';
import 'package:shaila_rani_website/features/video_management/domain/entity/video_entity.dart';
import 'package:shaila_rani_website/features/video_management/domain/repository/video_repository.dart';

class EditVideoUseCase extends UseCase<Unit, VideoEntity> {
  final VideoRepository repo;

  EditVideoUseCase({
    required this.repo,
  });
  @override
  Future<Either<Failure, Unit>> call(VideoEntity params) async {
    return await repo.edit(params);
  }
}
