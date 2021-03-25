import 'package:covid19_bloc/feature/presentation/bloc/covid_bloc.dart';
import '../bloc/covid_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CovidBloc, CovidState>(
      listener: (context, state) {
        switch (state.status) {
          case CovidStatus.error:
            Center(
              child: Text('${state.message}'),
            );
            break;
          default:
            break;
        }
      },
      builder: (context, state) {
        return Scaffold();
      },
    );
  }
}
