import 'package:get_it/get_it.dart';
import 'package:task/services/post_service.dart';
import 'package:task/cubits/post_cubit.dart';

final locator = GetIt.instance;

void setupLocator() {

  locator.registerLazySingleton<PostService>(() => PostService());
  locator.registerFactory<PostCubit>(() => PostCubit(locator<PostService>()));
  
}