import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:shaila_rani_website/core/errors/failures.dart';
import 'package:shaila_rani_website/features/video_management/domain/usecases/image_upload_usecase.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../domain/entity/video_entity.dart';
import '../../../domain/usecases/create_video_usecase.dart';
import '../../../domain/usecases/pick_image_usecase.dart';

part 'video_creator_event.dart';
part 'video_creator_state.dart';

class VideoCreatorBloc extends Bloc<VideoCreatorEvent, VideoCreatorState> {
  final CreateVideoUseCase createVideoUseCase;
  final PickImageUseCase pickImageUseCase;
  final ImageUploadUseCase imageUploadUseCase;
  VideoCreatorBloc({
    required this.createVideoUseCase,
    required this.pickImageUseCase,
    required this.imageUploadUseCase,
  }) : super(VideoCreatorInitial()) {
    on<VideoMangagerCreateEvent>((event, emit) async {
      emit(VideoCreatorLoading());

      final result = await createVideoUseCase(event.videoEntity);
      await result.fold(
          (failure) async => emit(VideoCreatorError(failure: failure)),
          (videos) async => emit(VideoManagerCreatedSuccess()));
    });
    on<ImagePickerEvent>((event, emit) async {
      emit(VideoCreatorLoading());
     
      final Either<Failure, Uint8List> image =
          await pickImageUseCase(NoParams());
      await image.fold(
          (failure) async => emit(VideoCreatorError(failure: failure)),
          (image) async => emit(ImagePickerState(image)));
    });
    on<ImageUploadEvent>((event, emit) async {
      emit(VideoCreatorLoading());
      final Either<Failure, String> image =
          await imageUploadUseCase(event.image);
      await image.fold(
          (failure) async => emit(ImageUploadedFailureState(failure: failure)),
          (image) async => emit(ImageUploadedSuccessState(imageUrl: image)));
    });
  }
}