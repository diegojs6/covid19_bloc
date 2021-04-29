import 'package:covid19_bloc/feature/domain/entities/world.dart';
import 'package:equatable/equatable.dart';

enum WorldStatus {
  loading,
  ready,
  error,
}

class WorldState extends Equatable {
  final WorldStatus status;
  final World? worldEntity;
  final String? message;

  WorldState._(this.status, this.worldEntity, this.message);

  @override
  List<Object?> get props => [
        status,
        worldEntity,
        message,
      ];

  WorldState.initial() : this._(WorldStatus.loading, null, null);

  WorldState loading() => WorldState._(
        WorldStatus.loading,
        worldEntity,
        message,
      );
      
  WorldState ready(World entity) => WorldState._(
        WorldStatus.ready,
        entity,
        message,
      );

  WorldState erro(String message) => WorldState._(
        WorldStatus.error,
        worldEntity,
        message,
      );
}
