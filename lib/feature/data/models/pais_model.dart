import 'package:covid19_bloc/feature/domain/entities/pais.dart';
import 'package:equatable/equatable.dart';

import 'package:covid19_bloc/feature/data/models/country_info_model.dart';

class PaisModel extends Equatable {
  final String name;
  final int deathsToday;
  final int critical;
  final CountryInfoModel countryInfoModel;
  PaisModel({
    required this.name,
    required this.deathsToday,
    required this.critical,
    required this.countryInfoModel,
  });

  @override
  List<Object> get props => [name, deathsToday, critical, countryInfoModel];

  factory PaisModel.fromJson(Map<String, dynamic> json) => PaisModel(
        name: json['country'],
        deathsToday: json['deaths'],
        critical: json['critical'],
        countryInfoModel: CountryInfoModel.fromJson(json['countryInfo']),
      );

  static Map<String, dynamic> toJson(PaisModel paisModel) => {
        'country': paisModel.name,
        'deaths': paisModel.deathsToday,
        'critical': paisModel.critical,
        'countryInfo': CountryInfoModel.toJson(paisModel.countryInfoModel),
      };

  factory PaisModel.fromEntity(Pais entity) => PaisModel(
        name: entity.name,
        deathsToday: entity.deathsToday,
        critical: entity.critical,
        countryInfoModel: CountryInfoModel.fromEntity(entity.countryInfo),
      );

  Pais toEntity() => Pais(
        name: name,
        deathsToday: deathsToday,
        critical: critical,
        countryInfo: countryInfoModel.toEntity(),
      );
}
