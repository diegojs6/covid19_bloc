import 'package:covid19_bloc/core/errors/failures.dart';
import 'package:covid19_bloc/feature/domain/entities/world.dart';
import 'package:covid19_bloc/feature/domain/repositories/i_covid_repository.dart';
import 'package:dartz/dartz.dart';

class GetWorld {
  final ICovidRepository repository;

  GetWorld(this.repository);

  Future<Either<Failure, World>> call() async {
    return repository.getCovidAllWorld();
  }
}
