import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:shaila_rani_website/features/video_management/data/repository/video_repository_impl.dart';

import 'features/video_management/data/datasources/firebase_data_source.dart';
import 'features/video_management/domain/repository/video_repository.dart';
import 'features/video_management/domain/usecases/create_video_usecase.dart';
import 'features/video_management/domain/usecases/get_video_usecase.dart';
import 'features/video_management/presentation/bloc/bloc/video_manager_bloc.dart';

final sl = GetIt.instance;

Future<void> initGetIt() async {
  //bloc

  sl.registerFactory<VideoManagerBloc>(
    () => VideoManagerBloc(
      createVideoUseCase: sl(),
      getVideoUseCase: sl(),
    ),
  );
  //use cases

  sl.registerLazySingleton<CreateVideoUseCase>(
      () => CreateVideoUseCase(repo: sl()));
  sl.registerLazySingleton<GetVideoUseCase>(() => GetVideoUseCase(repo: sl()));

  //repository

  sl.registerLazySingleton<VideoRepository>(
      () => VideoRepositoryImpl(dataSource: sl()));
  //data sources
  sl.registerLazySingleton<VideoFirebaseDataSource>(
      () => VideoFirebaseDataSourceImpl(firestore: sl()));
  //core

  //external

  sl.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
}
