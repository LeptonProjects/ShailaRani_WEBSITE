part of 'video_manager_bloc.dart';

sealed class VideoManagerEvent extends Equatable {
  const VideoManagerEvent();

  @override
  List<Object> get props => [];
}

class VideoManagerFetchEvent extends VideoManagerEvent {}

class VideoMangagerCreateEvent extends VideoManagerEvent {
  final VideoEntity videoEntity;

  const VideoMangagerCreateEvent({required this.videoEntity});
}
