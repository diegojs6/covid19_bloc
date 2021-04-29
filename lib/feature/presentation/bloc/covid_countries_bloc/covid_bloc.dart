import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:covid19_bloc/core/errors/failures.dart';
import 'package:covid19_bloc/core/utils/app_strings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'covid_state.dart';
import 'package:covid19_bloc/feature/domain/usecase/get_countries.dart';

part 'covid_bloc.freezed.dart';
part 'covid_event.dart';

class CovidBloc extends Bloc<CovidEvent, CovidState> {
  final GetCountries getCountries;
  CovidBloc(
    this.getCountries,
  ) : super(CovidState.initial());

  @override
  Stream<CovidState> mapEventToState(CovidEvent event) async* {
    yield* event.when(
      loading: () async* {
        yield state.loading();
        var fold = await getCountries();
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
