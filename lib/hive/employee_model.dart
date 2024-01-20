import 'package:hive/hive.dart';

part 'employee_model.g.dart';

@HiveType(typeId: 0)
class EmployeeModel extends HiveObject {
  EmployeeModel({
    this.id,
    required this.employeeName,
    required this.role,
    required this.fromDate,
    required this.toDate,
    required this.saveTimeMillis,
  });

  @HiveField(0)
  int? id;

  @HiveField(1)
  String employeeName;

  @HiveField(2)
  String role;

  @HiveField(3)
  String fromDate;

  @HiveField(4)
  String toDate;

  @HiveField(5)
  String saveTimeMillis;
}
