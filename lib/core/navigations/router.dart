import 'package:covid19_bloc/core/navigations/routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoutes(RouteSettings settings){
    switch(settings.name){
      case Routes.homePage:
        //return MaterialPageRoute(builder: (_) => HomeScreen());
      default: 
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(child: Text('Erro')),
        ));
    }
  }
}