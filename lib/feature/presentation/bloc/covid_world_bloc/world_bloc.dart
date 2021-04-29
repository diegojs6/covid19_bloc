import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:covid19_bloc/core/errors/failures.dart';
import 'package:covid19_bloc/core/utils/app_strings.dart';
import 'package:covid19_bloc/feature/domain/usecase/get_world.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:covid19_bloc/feature/presentation/bloc/covid_world_bloc/world_bloc_state.dart';
part 'world_bloc_event.dart';
part 'world_bloc.freezed.dart';

class WorldBloc extends Bloc<WorldBlocEvent, WorldState> {
  final GetWorld getWorld;
  WorldBloc(
    this.getWorld,
  ) : super(WorldState.initial());

  @override
  Stream<WorldState> mapEventToState(
    WorldBlocEvent event,
  ) async* {
    yield* event.when(
      loading: () async* {
        yield state.loading();
        var fold = await getWorld();
        yield await fold.fold(
          (failure) => state.erro(_mapWorldFailureToString(failure)),
          (response) => state.ready(response),
        );
      },
    );
  }

  String _mapWorldFailureToString(Failure failure) {
    return failure.maybeWhen(
        serverFailure: () => AppStrings.covidFailureServer,
        networkFailure: () => AppStrings.covidFailureNetwork,
        orElse: () => AppStrings.covidFailure);
  }
}
