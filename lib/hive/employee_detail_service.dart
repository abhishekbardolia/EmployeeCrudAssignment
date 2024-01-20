import 'package:developer_assignment/hive/employee_model.dart';

abstract class EmployeeModelServices {
  Future <List<EmployeeModel>> getEmployees();
  Future <void> insertEmployee(EmployeeModel employee);
  Future <void> updateEmployee(EmployeeModel employee);
  Future <void> deleteEmployee(int employee);
}