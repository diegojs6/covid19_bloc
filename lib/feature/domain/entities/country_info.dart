import 'package:equatable/equatable.dart';

class CountryInfo extends Equatable {
  final String flag;
  CountryInfo({
    required this.flag,
  });

  @override
  List<Object?> get props => [flag];
}
