import 'dart:convert';
import 'package:covid19_bloc/core/api/api_interceptor.dart';
import 'package:covid19_bloc/core/api/endpoints.dart';
import 'package:covid19_bloc/core/api/url_creator.dart';
import 'package:covid19_bloc/core/device/network_info.dart';
import 'package:covid19_bloc/core/errors/exception.dart';
import 'package:covid19_bloc/feature/data/models/countries_model.dart';
import 'package:covid19_bloc/feature/data/models/world_info_model.dart';

abstract class ICovidRemoteDataSource {
  Future<CountriesModel> getCountries();
  Future<WorldInfoModel> getWorld();
}

class CovidRemoteDataSource implements ICovidRemoteDataSource {
  final IHttpClient client;
  final INetworkInfo networkInfo;
  final IUrlCreator urlCreator;

  CovidRemoteDataSource(this.client, this.networkInfo, this.urlCreator);

  @override
  Future<CountriesModel> getCountries() async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      final response = await client.get(urlCreator.create(endPoint: Endpoints.countrieBrazil));
      switch (response.statusCode) {
        case 200:
          return CountriesModel.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
        default:
          throw ServerException();
      }
    } else {
      throw NetworkException();
    }
  }

  @override
  Future<WorldInfoModel> getWorld() async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      final response = await client.get(urlCreator.create(endPoint: Endpoints.countrieWorld));
      switch (response.statusCode) {
        case 200:
          return WorldInfoModel.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
        default:
          throw ServerException();
      }
    } else {
      throw NetworkException();
    }
  }
}
