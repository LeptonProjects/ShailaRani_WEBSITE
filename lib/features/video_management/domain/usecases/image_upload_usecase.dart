import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/video_repository.dart';

class ImageUploadUseCase extends UseCase<String, Uint8List> {
  final VideoRepository repo;

  ImageUploadUseCase({
    required this.repo,
  });
  @override
  Future<Either<Failure, String>> call(Uint8List params) async {
    return await repo.imageRemoteUpload(params);
  }
}
