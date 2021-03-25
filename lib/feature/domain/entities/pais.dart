import 'package:covid19_bloc/feature/domain/entities/country_info.dart';
import 'package:equatable/equatable.dart';

class Pais extends Equatable {
  final String name;
  final int deathsToday;
  final int critical;
  final CountryInfo countryInfo;

  Pais({required this.name, required this.deathsToday, required this.critical, required this.countryInfo});

  @override
  List<Object?> get props => [name, deathsToday, critical, countryInfo];
}
