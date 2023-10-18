part of 'video_creator_bloc.dart';

sealed class VideoCreatorEvent extends Equatable {
  const VideoCreatorEvent();

  @override
  List<Object> get props => [];
}

class VideoMangagerCreateEvent extends VideoCreatorEvent {
  final VideoEntity videoEntity;

  const VideoMangagerCreateEvent({required this.videoEntity});
}

class ImageUploadEvent extends VideoCreatorEvent {
  final Uint8List image;

  const ImageUploadEvent({required this.image});
}

class ImagePickerEvent extends VideoCreatorEvent {
  
}