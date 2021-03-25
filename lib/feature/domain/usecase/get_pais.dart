import 'package:covid19_bloc/core/errors/failures.dart';
import 'package:covid19_bloc/feature/domain/entities/pais.dart';
import 'package:covid19_bloc/feature/domain/repositories/i_covid_repository.dart';
import 'package:dartz/dartz.dart';

class GetPais {
  final ICovidRepository repository;

  GetPais(this.repository);

  Future<Either<Failure, Pais>> call() async {
    return repository.getCovidWorld();
  }
}
