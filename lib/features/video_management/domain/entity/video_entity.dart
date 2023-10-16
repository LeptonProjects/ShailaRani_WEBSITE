import 'package:equatable/equatable.dart';

class VideoEntity extends Equatable {
  final String url;
  final String title;
  final String subtitle;
  final String description;
  final String uploadedDate;
  final String thumbnailurl;

  const VideoEntity({
    required this.url,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.uploadedDate,
    required this.thumbnailurl,
  });
  @override
  List<Object?> get props => [
        url,
        title,
        subtitle,
        description,
        uploadedDate,
        thumbnailurl,
      ];
}
