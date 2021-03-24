import 'package:connectivity/connectivity.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => http.Client);
  sl.registerLazySingleton(() => Connectivity());
  await sl.allReady();
}