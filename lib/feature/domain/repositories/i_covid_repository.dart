import 'package:covid19_bloc/core/errors/failures.dart';
import 'package:covid19_bloc/feature/domain/entities/pais.dart';
import 'package:dartz/dartz.dart';

abstract class ICovidRepository {
  Future<Either<Failure, Pais>> getCovidWorld();
}
