import 'package:equatable/equatable.dart';
import 'package:shaila_rani_website/features/video_management/domain/entity/video_entity.dart';

class VideoModel extends Equatable {
  final String? url;
  final String? title;
  final String? subtitle;
  final String? description;
  final String? uploadedDate;
  final String? thumbnailurl;

  const VideoModel({
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

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
      url: json["url"] ?? "",
      title: json["title"] ?? "",
      subtitle: json["subtitle"] ?? "",
      description: json["description"] ?? "",
      uploadedDate: json["uploadedDate"] ?? "",
      thumbnailurl: json["thumbnailurl"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "url": url,
      "title": title,
      "subtitle": subtitle,
      "description": description,
      "uploadedDate": uploadedDate,
      "thumbnailurl": thumbnailurl,
    };
  }

  VideoEntity toDomain() {
    return VideoEntity(
      url: url ?? "",
      title: title ?? "",
      subtitle: subtitle ?? "",
      description: description ?? "",
      uploadedDate: uploadedDate ?? "",
      thumbnailurl: thumbnailurl ?? "",
    );
  }

  factory VideoModel.fromDomain(VideoEntity video) {
    return VideoModel(
      url: video.url,
      title: video.title,
      subtitle: video.subtitle,
      description: video.description,
      uploadedDate: video.uploadedDate,
      thumbnailurl: video.thumbnailurl,
    );
  }
}
