import 'package:covid19_bloc/core/errors/exception.dart';
import 'package:covid19_bloc/core/errors/failures.dart';
import 'package:covid19_bloc/feature/data/datasource/covid_remote_data_source.dart';
import 'package:covid19_bloc/feature/domain/entities/pais.dart';
import 'package:covid19_bloc/feature/domain/repositories/i_covid_repository.dart';
import 'package:dartz/dartz.dart';

class CovidRepository implements ICovidRepository {
  final ICovidRemoteDataSource remoteDataSource;

  CovidRepository(this.remoteDataSource);

  @override
  Future<Either<Failure, Pais>> getCovidWorld() async {
    try {
      var response = await remoteDataSource.getPais();
      final entity = response.toEntity();
      return Right(entity);
    } on NetworkException {
      return Left(NetworkFailure());
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
