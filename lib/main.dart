import 'package:covid19_bloc/core/navigations/router.dart';
import 'package:covid19_bloc/core/navigations/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'injection_container.dart' as di;

void main() async {
  await di.init();
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      themeMode: ThemeMode.light,
      onGenerateRoute: _router.generateRoutes,
      initialRoute: Routes.homePage,
      navigatorObservers: [HeroController()],
    );
  }
}

