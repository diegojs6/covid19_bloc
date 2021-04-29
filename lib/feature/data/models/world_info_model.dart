import 'package:covid19_bloc/feature/domain/entities/world.dart';
import 'package:equatable/equatable.dart';

class WorldInfoModel extends Equatable {
  final int? recovered;
  final int? critical;
  final int? deaths;

  WorldInfoModel({
    this.recovered,
    this.critical,
    this.deaths,
  });

  @override
  List<Object?> get props => [
        recovered,
        critical,
        deaths,
      ];

  factory WorldInfoModel.fromJson(Map<String, dynamic> json) => WorldInfoModel(
        recovered: json['recovered'],
        critical: json['critical'],
        deaths: json['deaths'],
      );

  static Map<String, dynamic> toJson(WorldInfoModel worldInfo) => {
        'recovered': worldInfo.recovered,
        'critical': worldInfo.critical,
        'deaths': worldInfo.deaths,
      };

  factory WorldInfoModel.fromEntity(World entity) => WorldInfoModel(
        recovered: entity.recovered,
        critical: entity.critical,
        deaths: entity.deaths,
      );

  World toEntity() => World(
        recovered: recovered,
        critical: critical,
        deaths: deaths,
      );
}
