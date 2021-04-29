import 'package:covid19_bloc/core/navigations/routes.dart';
import 'package:covid19_bloc/feature/presentation/bloc/covid_countries_bloc/covid_bloc.dart';
import 'package:covid19_bloc/feature/presentation/bloc/covid_world_bloc/world_bloc.dart';
import 'package:covid19_bloc/feature/presentation/page/home_page.dart';
import 'package:covid19_bloc/feature/presentation/page/home_page_world.dart';
import 'package:covid19_bloc/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final _covidBloc = sl<CovidBloc>();
  final _worldBloc = sl<WorldBloc>();

  Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _covidBloc..add(CovidEvent.loading()),
                  child: HomePage(),
                ));
      case Routes.worldPage:
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _worldBloc..add(WorldBlocEvent.loading()),
                  child: HomePageWorld(),
                ));

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('Erro')),
                ));
    }
  }
}
