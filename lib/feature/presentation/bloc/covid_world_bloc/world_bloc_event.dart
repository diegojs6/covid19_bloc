part of 'world_bloc.dart';

@freezed
class WorldBlocEvent with _$WorldBlocEvent {
  const factory WorldBlocEvent.loading() = _Loading;
}
