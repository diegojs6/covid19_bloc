import 'package:covid19_bloc/feature/domain/entities/countries.dart';
import 'package:equatable/equatable.dart';

import 'package:covid19_bloc/feature/data/models/country_info_model.dart';

class CountriesModel extends Equatable {
  final String name;
  final int deathsToday;
  final int critical;
  final CountryInfoModel countryInfoModel;
  final int recovered;
  CountriesModel(
      {required this.name,
      required this.deathsToday,
      required this.critical,
      required this.countryInfoModel,
      required this.recovered});

  @override
  List<Object> get props => [name, deathsToday, critical, countryInfoModel, recovered];

  factory CountriesModel.fromJson(Map<String, dynamic> json) => CountriesModel(
        name: json['country'],
        deathsToday: json['deaths'],
        critical: json['critical'],
        countryInfoModel: CountryInfoModel.fromJson(json['countryInfo']),
        recovered: json['recovered'],
      );

  static Map<String, dynamic> toJson(CountriesModel paisModel) => {
        'country': paisModel.name,
        'deaths': paisModel.deathsToday,
        'critical': paisModel.critical,
        'countryInfo': CountryInfoModel.toJson(paisModel.countryInfoModel),
        'recovered': paisModel.recovered,
      };

  factory CountriesModel.fromEntity(Countries entity) => CountriesModel(
        name: entity.name,
        deathsToday: entity.deathsToday,
        critical: entity.critical,
        countryInfoModel: CountryInfoModel.fromEntity(entity.countryInfo),
        recovered: entity.recovered,
      );

  Countries toEntity() => Countries(
        name: name,
        deathsToday: deathsToday,
        critical: critical,
        countryInfo: countryInfoModel.toEntity(),
        recovered: recovered,
      );
}
