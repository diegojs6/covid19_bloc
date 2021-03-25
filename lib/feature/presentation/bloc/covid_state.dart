import 'package:equatable/equatable.dart';
import 'package:covid19_bloc/feature/domain/entities/pais.dart';

enum CovidStatus {
  loading,
  ready,
  error,
}

class CovidState extends Equatable {
  final CovidStatus status;
  final Pais? paisEntity;
  final String? message;

  CovidState._(this.status, this.paisEntity, this.message);

  @override
  List<Object?> get props => [status, paisEntity, message];

  CovidState.initial() : this._(CovidStatus.loading, null, null);

  CovidState loading() => CovidState._(
        CovidStatus.loading,
        paisEntity,
        message,
      );
  CovidState ready(Pais entity) => CovidState._(
        CovidStatus.ready,
        entity,
        message,
      );
  CovidState erro(String msgError) => CovidState._(
        CovidStatus.error,
        paisEntity,
        msgError,
      );
}
