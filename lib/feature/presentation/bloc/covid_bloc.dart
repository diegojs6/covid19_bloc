import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:covid19_bloc/core/errors/failures.dart';
import 'package:covid19_bloc/core/utils/app_strings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:covid19_bloc/feature/domain/usecase/get_pais.dart';

import '../bloc/covid_state.dart';

part 'covid_bloc.freezed.dart';
part 'covid_event.dart';

class CovidBloc extends Bloc<CovidEvent, CovidState> {
  CovidBloc(
    this.getPais,
  ) : super(CovidState.initial());
  final GetPais getPais;

  @override
  Stream<CovidState> mapEventToState(
    CovidEvent event,
  ) async* {
    yield* event.when(
      loading: () async* {
        yield state.loading();
        var fold = await getPais();
        yield await fold.fold(
          (failure) => state.erro(_mapCovidFailureToString(failure)),
          (response) => state.ready(response),
        );
      },
    );
  }

  String _mapCovidFailureToString(Failure failure) {
    return failure.maybeWhen(
        serverFailure: () => AppStrings.covidFailureServer,
        networkFailure: () => AppStrings.covidFailureNetwork,
        orElse: () => AppStrings.covidFailure);
  }
}
