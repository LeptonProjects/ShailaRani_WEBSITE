import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shaila_rani_website/features/video_management/data/datasources/local_data_source.dart';
import 'package:shaila_rani_website/features/video_management/data/repository/video_repository_impl.dart';
import 'package:shaila_rani_website/features/video_management/domain/usecases/image_upload_usecase.dart';
import 'package:shaila_rani_website/features/video_management/domain/usecases/pick_image_usecase.dart';
import 'package:shaila_rani_website/features/video_management/presentation/bloc/video_creator/video_creator_bloc.dart';
import 'package:uuid/uuid.dart';

import 'core/utils/image_picker.dart';
import 'features/video_management/data/datasources/firebase_data_source.dart';
import 'features/video_management/domain/repository/video_repository.dart';
import 'features/video_management/domain/usecases/create_video_usecase.dart';
import 'features/video_management/domain/usecases/delete_video_usecase.dart';
import 'features/video_management/domain/usecases/get_video_usecase.dart';
import 'features/video_management/presentation/pages/widgets/video_widgets.dart';

final sl = GetIt.instance;

Future<void> initGetIt() async {
  //bloc

  sl.registerFactory<VideoManagerBloc>(
    () => VideoManagerBloc(getVideoUseCase: sl(), deleteVideoUseCase: sl()),
  );
  sl.registerFactory<VideoCreatorBloc>(
    () => VideoCreatorBloc(
      createVideoUseCase: sl(),
      pickImageUseCase: sl(),
      imageUploadUseCase: sl(),
    ),
  );
  //use cases

  sl.registerLazySingleton<CreateVideoUseCase>(
      () => CreateVideoUseCase(repo: sl()));
  sl.registerLazySingleton<GetVideoUseCase>(() => GetVideoUseCase(repo: sl()));
  sl.registerLazySingleton<PickImageUseCase>(
      () => PickImageUseCase(repo: sl()));
  sl.registerLazySingleton<ImageUploadUseCase>(
      () => ImageUploadUseCase(repo: sl()));
  sl.registerLazySingleton<DeleteVideoUseCase>(
      () => DeleteVideoUseCase(repo: sl()));

  //repository

  sl.registerLazySingleton<VideoRepository>(
      () => VideoRepositoryImpl(dataSource: sl(), localDataSource: sl()));
  //data sources
  sl.registerLazySingleton<VideoFirebaseDataSource>(() =>
      VideoFirebaseDataSourceImpl(
          firestore: sl(), uuid: sl(), firebaseStorage: sl()));
  sl.registerLazySingleton<LocalDataSource>(
      () => LocalDataSourceImpl(imagePickerClass: sl()));
  //core

  sl.registerLazySingleton<ImagePickerClass>(
      () => ImagePickerClass(picker: sl()));

  //external

  sl.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
  sl.registerLazySingleton<FirebaseStorage>(() => FirebaseStorage.instance);
  sl.registerLazySingleton<Uuid>(() => const Uuid());
  sl.registerLazySingleton<ImagePicker>(() => ImagePicker());
}
