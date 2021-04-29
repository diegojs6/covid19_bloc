import 'package:equatable/equatable.dart';

class World extends Equatable {
  final int? recovered;
  final int? critical;
  final int? deaths;

  World({
    this.recovered,
    this.critical,
    this.deaths,
  });

  @override
  List<Object?> get props => [recovered, critical, deaths];
}
