import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:shaila_rani_website/core/errors/exceptions.dart';
import 'package:shaila_rani_website/core/errors/failures.dart';
import 'package:shaila_rani_website/features/video_management/data/datasources/firebase_data_source.dart';
import 'package:shaila_rani_website/features/video_management/data/datasources/local_data_source.dart';
import 'package:shaila_rani_website/features/video_management/data/model/video_model.dart';
import 'package:shaila_rani_website/features/video_management/domain/entity/video_entity.dart';
import 'package:shaila_rani_website/features/video_management/domain/repository/video_repository.dart';

class VideoRepositoryImpl implements VideoRepository {
  final VideoFirebaseDataSource dataSource;
  final LocalDataSource localDataSource;

  VideoRepositoryImpl({
    required this.localDataSource,
    required this.dataSource,
  });
  @override
  Future<Either<Failure, List<VideoEntity>>> getAllVideos() async {
    try {
      final video = await dataSource.getVideos();
      final data = video.map((r) => r.toDomain()).toList();
      return right(data);
    } on ServerException {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> create(VideoEntity videoEntity) async {
    try {
      await dataSource.createVideo(VideoModel.fromDomain(videoEntity));
      return right(unit);
    } on ServerException {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Uint8List>> pickImageFromGallery() async {
    try {
      final image = await localDataSource.getImage();
      return right(image);
    } on ImageException {
      return left(ImageFailure());
    }
  }

  @override
  Future<Either<Failure, String>> imageRemoteUpload(Uint8List image) async {
    try {
      final String imageUrl = await dataSource.uploadImage(image);
      return right(imageUrl);
    } on ImageException {
      return left(ImageFailure());
    }
  }
}
