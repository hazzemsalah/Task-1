import 'package:get_it/get_it.dart';
import 'package:task/core/services/posts_service.dart';
import 'features/posts/cubits/post_cubit.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton<PostService>(() => PostService());
  locator.registerFactory<PostCubit>(() => PostCubit());
}
