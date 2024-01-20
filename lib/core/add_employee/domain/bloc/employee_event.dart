part of 'employee_bloc.dart';

@freezed
abstract class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.getEmployee() = GetEmployees;
  const factory EmployeeEvent.updateEmployee({required EmployeeModel employee}) = UpdateEmployee;
  const factory EmployeeEvent.addEmployee({required EmployeeModel employee}) = AddEmployee;
  const factory EmployeeEvent.deleteEmployee({required int id}) = DeleteEmployee;
  const factory EmployeeEvent.showBottomDialog({required bool isOpen}) = ShowBottomDialog;
}


