import 'package:covid19_bloc/feature/domain/entities/country_info.dart';
import 'package:equatable/equatable.dart';

class CountryInfoModel extends Equatable {
  final String flag;
  CountryInfoModel({
    required this.flag,
  });

  @override
  List<Object> get props => [flag];

  factory CountryInfoModel.fromJson(Map<String, dynamic> json) => CountryInfoModel(
        flag: json['flag'],
      );

  static Map<String, dynamic> toJson(CountryInfoModel countryInfoModel) => {
        'flag': countryInfoModel.flag,
      };

  factory CountryInfoModel.fromEntity(CountryInfo entity) => CountryInfoModel(flag: entity.flag);

  CountryInfo toEntity() => CountryInfo(flag: flag);
}
