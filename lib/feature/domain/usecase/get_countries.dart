import 'package:covid19_bloc/core/errors/failures.dart';
import 'package:covid19_bloc/feature/domain/entities/countries.dart';
import 'package:covid19_bloc/feature/domain/repositories/i_covid_repository.dart';
import 'package:dartz/dartz.dart';

class GetCountries {
  final ICovidRepository repository;

  GetCountries(this.repository);

  Future<Either<Failure, Countries>> call() async {
    return repository.getCovidCountries();
  }
}
