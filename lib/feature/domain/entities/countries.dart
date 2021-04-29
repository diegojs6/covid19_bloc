import 'package:covid19_bloc/feature/domain/entities/country_info.dart';
import 'package:equatable/equatable.dart';

class Countries extends Equatable {
  final String name;
  final int deathsToday;
  final int critical;
  final CountryInfo countryInfo;
  final int recovered;

  Countries(
      {required this.name,
      required this.deathsToday,
      required this.critical,
      required this.countryInfo,
      required this.recovered});

  @override
  List<Object?> get props => [name, deathsToday, critical, countryInfo, recovered];
}
