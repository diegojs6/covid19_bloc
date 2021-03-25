import 'package:covid19_bloc/core/navigations/routes.dart';
import 'package:covid19_bloc/feature/presentation/bloc/covid_bloc.dart';
import 'package:covid19_bloc/feature/presentation/page/home_page.dart';
import 'package:covid19_bloc/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final _covidBloc = sl<CovidBloc>();

  Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _covidBloc..add(CovidEvent.loading()),
                  child: HomePage(),
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('Erro')),
                ));
    }
  }
}
