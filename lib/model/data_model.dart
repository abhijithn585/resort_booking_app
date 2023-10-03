import 'package:hive_flutter/adapters.dart';
part 'data_model.g.dart';

@HiveType(typeId: 1)
class CustomerDataModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String number;
  @HiveField(2)
  final String fromdate;
  @HiveField(3)
  final String toDate;

  CustomerDataModel(
      {required this.name,
      required this.number,
      required this.fromdate,
      required this.toDate});
}
