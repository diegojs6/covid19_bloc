import 'package:connectivity/connectivity.dart';
import 'package:covid19_bloc/core/api/api_interceptor.dart';
import 'package:covid19_bloc/core/api/url_creator.dart';
import 'package:covid19_bloc/core/device/network_info.dart';
import 'package:covid19_bloc/feature/data/datasource/covid_remote_data_source.dart';
import 'package:covid19_bloc/feature/domain/repositories/i_covid_repository.dart';
import 'package:covid19_bloc/feature/presentation/bloc/covid_countries_bloc/covid_bloc.dart';

import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'feature/data/repositories/covid_repository.dart';
import 'feature/domain/usecase/get_countries.dart';
import 'feature/domain/usecase/get_world.dart';
import 'feature/presentation/bloc/covid_world_bloc/world_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Feature Home
  sl.registerLazySingleton(() => WorldBloc(sl()));
  sl.registerLazySingleton(() => CovidBloc(sl()));
  sl.registerLazySingleton(() => GetWorld(sl()));
  sl.registerLazySingleton(() => GetCountries(sl()));
  sl.registerLazySingleton<ICovidRepository>(() => CovidRepository(sl()));
  sl.registerLazySingleton<ICovidRemoteDataSource>(
    () => CovidRemoteDataSource(sl(), sl(), sl()),
  );
  //! Core
  sl.registerSingleton<IHttpClient>(HttpClient());
  sl.registerLazySingleton<INetworkInfo>(() => NetworkInfo(sl()));
  sl.registerLazySingleton<IUrlCreator>(() => UrlCreator());

  sl.registerLazySingleton(() => http.Client);
  sl.registerLazySingleton(() => Connectivity());
  await sl.allReady();
}
