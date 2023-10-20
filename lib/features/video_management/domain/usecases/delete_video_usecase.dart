import 'package:dartz/dartz.dart';
import 'package:shaila_rani_website/core/errors/failures.dart';
import 'package:shaila_rani_website/core/usecase/usecase.dart';
import 'package:shaila_rani_website/features/video_management/domain/repository/video_repository.dart';

class DeleteVideoUseCase extends UseCase<Unit, String> {
  final VideoRepository repo;

  DeleteVideoUseCase({
    required this.repo,
  });
  @override
  Future<Either<Failure, Unit>> call(String params) async {
    return await repo.deleteVideo(params);
  }
}
