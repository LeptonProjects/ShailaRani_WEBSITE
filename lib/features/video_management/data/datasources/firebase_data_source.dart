import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:shaila_rani_website/core/errors/exceptions.dart';
import 'package:shaila_rani_website/features/video_management/data/model/video_model.dart';

abstract class VideoFirebaseDataSource {
  Future<List<VideoModel>> getVideos();
  Future<Unit> createVideo(Map<String, dynamic> videoModel);
}

class VideoFirebaseDataSourceImpl implements VideoFirebaseDataSource {
  final FirebaseFirestore firestore;
  static const String clsName = "VideoFirebaseDataSourceImpl";

  VideoFirebaseDataSourceImpl({
    required this.firestore,
  });
  @override
  Future<List<VideoModel>> getVideos() async {
    try {
      final videos = await firestore.doc("").collection("").get();
      return videos.docs.map((e) => VideoModel.fromJson(e.data())).toList();
    } catch (e) {
      log(e.toString(), name: "$clsName getVideos");
      throw ServerException();
    }
  }

  @override
  Future<Unit> createVideo(Map<String, dynamic> videoModel) async {
    try {
      await firestore.doc("").collection("").doc("").set(videoModel);
      return unit;
    } catch (e) {
      log(e.toString(), name: "$clsName createVideo");
      throw ServerException();
    }
  }
}
