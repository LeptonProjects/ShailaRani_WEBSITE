import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaila_rani_website/core/errors/failures.dart';
import 'package:shaila_rani_website/core/usecase/usecase.dart';
import 'package:shaila_rani_website/features/video_management/domain/entity/video_entity.dart';
import 'package:shaila_rani_website/features/video_management/domain/usecases/get_video_usecase.dart';

part 'video_manager_event.dart';
part 'video_manager_state.dart';

class VideoManagerBloc extends Bloc<VideoManagerEvent, VideoManagerState> {
  final GetVideoUseCase getVideoUseCase;

  VideoManagerBloc({
    required this.getVideoUseCase,
  }) : super(VideoManagerInitial()) {
    on<VideoManagerFetchEvent>((event, emit) async {
      emit(VideoManagerLoading());
      final Either<Failure, List<VideoEntity>> videos =
          await getVideoUseCase(NoParams());
      await videos.fold(
          (failure) async => emit(VideoManagerError(failure: failure)),
          (videos) async => emit(VideoManagerLoaded(videos: videos)));
    });
  }
}
