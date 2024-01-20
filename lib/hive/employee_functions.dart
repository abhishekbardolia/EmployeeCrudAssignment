import 'dart:developer';

import 'package:developer_assignment/hive/employee_model.dart';
import 'package:hive/hive.dart';

import 'employee_detail_service.dart';
const dbName = 'employee-database';

class EmployeeFunctions implements EmployeeModelServices {
  @override
  Future<void> deleteEmployee(int id) async{
      final box = await Hive.openBox<EmployeeModel>(dbName);
      await box.delete(id);
  }

  @override
  Future<List<EmployeeModel>> getEmployees() async{
      final box = await Hive.openBox<EmployeeModel>(dbName);
      return box.values.toList();
  }

  @override
  Future<void> insertEmployee(EmployeeModel employee) async{
      final box = await Hive.openBox<EmployeeModel>(dbName);
      var newEmployee = employee;
      final int id =await box.add(newEmployee);
      newEmployee.id=id;
      newEmployee.save();
  }

  @override
  Future<void> updateEmployee(EmployeeModel employee) async{
      final box = await Hive.openBox<EmployeeModel>(dbName);
      await box.put(employee.id, employee);
  }
}
