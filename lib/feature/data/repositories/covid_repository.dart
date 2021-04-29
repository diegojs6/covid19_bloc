import 'package:covid19_bloc/core/errors/exception.dart';
import 'package:covid19_bloc/core/errors/failures.dart';
import 'package:covid19_bloc/feature/data/datasource/covid_remote_data_source.dart';
import 'package:covid19_bloc/feature/domain/entities/countries.dart';
import 'package:covid19_bloc/feature/domain/entities/world.dart';
import 'package:covid19_bloc/feature/domain/repositories/i_covid_repository.dart';
import 'package:dartz/dartz.dart';

class CovidRepository implements ICovidRepository {
  final ICovidRemoteDataSource remoteDataSource;

  CovidRepository(this.remoteDataSource);

  @override
  Future<Either<Failure, Countries>> getCovidCountries() async {
    try {
      var response = await remoteDataSource.getCountries();
      final entity = response.toEntity();
      return Right(entity);
    } on NetworkException {
      return Left(NetworkFailure());
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, World>> getCovidAllWorld() async {
    try {
      var response = await remoteDataSource.getWorld();
      final entity = response.toEntity();
      return Right(entity);
    } on NetworkException {
      return Left(NetworkFailure());
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
