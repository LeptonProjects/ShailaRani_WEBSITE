import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/video_repository.dart';

class PickImageUseCase extends UseCase<Uint8List, NoParams> {
  final VideoRepository repo;

  PickImageUseCase({
    required this.repo,
  });
  @override
  Future<Either<Failure, Uint8List>> call(NoParams params) async {
    return await repo.pickImageFromGallery();
  }
}
