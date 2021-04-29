import 'package:covid19_bloc/core/errors/failures.dart';
import 'package:covid19_bloc/feature/domain/entities/countries.dart';
import 'package:covid19_bloc/feature/domain/entities/world.dart';
import 'package:dartz/dartz.dart';

abstract class ICovidRepository {
  Future<Either<Failure, Countries>> getCovidCountries();

  Future<Either<Failure, World>> getCovidAllWorld();
}
