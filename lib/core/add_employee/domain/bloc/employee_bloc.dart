import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:developer_assignment/hive/employee_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../hive/employee_functions.dart';

part 'employee_event.dart';

part 'employee_state.dart';

part 'employee_bloc.freezed.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  EmployeeFunctions employeeService;

  EmployeeBloc({required this.employeeService})
      : super(EmployeeState.initial()) {
    on<GetEmployees>((event, emit) async {
      emit(
        state.copyWith(isLoading: true),
      );

      final result = await employeeService.getEmployees();
      List<EmployeeModel> listCurrentEmployee=[];
      List<EmployeeModel> listPreviousEmployee=[];

      result.forEach((employee) {
        if (employee.toDate.isEmpty) {
          listCurrentEmployee.add(employee);
        } else {
          listPreviousEmployee.add(employee);
        }
      });
      listCurrentEmployee = sortBySaveTime(listCurrentEmployee);
      listPreviousEmployee = sortBySaveTime(listPreviousEmployee);
      emit(EmployeeState(
          isLoading: false,
          currentEmployeeModelList: listCurrentEmployee,
          previousEmployeeModelList:listPreviousEmployee,totalRecords: result.length,
          shouldShowRoleDialog: false));
    });
    // add employee to hive
    on<AddEmployee>((event, emit) async {
      emit(
        state.copyWith(isLoading: true),
      );
      await employeeService.insertEmployee(event.employee);

      final result = await employeeService.getEmployees();
      List<EmployeeModel> listCurrentEmployee=[];
      List<EmployeeModel> listPreviousEmployee=[];

      result.forEach((employee) {
        if (employee.toDate.isEmpty) {
          listCurrentEmployee.add(employee);
        } else {
          listPreviousEmployee.add(employee);
        }
      });


      listCurrentEmployee = sortBySaveTime(listCurrentEmployee);
      listPreviousEmployee = sortBySaveTime(listPreviousEmployee);
      emit(EmployeeState(
          isLoading: false,
          currentEmployeeModelList: listCurrentEmployee,
          previousEmployeeModelList:listPreviousEmployee,totalRecords: result.length,
          shouldShowRoleDialog: false));

    });

    // delete employee from hive using key
    on<DeleteEmployee>((event, emit) async {
      emit(
        state.copyWith(isLoading: true),
      );
      await employeeService.deleteEmployee(event.id);

      final result = await employeeService.getEmployees();
      List<EmployeeModel> listCurrentEmployee=[];
      List<EmployeeModel> listPreviousEmployee=[];

      result.forEach((employee) {
        if (employee.toDate.isEmpty) {
          listCurrentEmployee.add(employee);
        } else {
          listPreviousEmployee.add(employee);
        }
      });


      listCurrentEmployee = sortBySaveTime(listCurrentEmployee);
      listPreviousEmployee = sortBySaveTime(listPreviousEmployee);
      emit(EmployeeState(
          isLoading: false,
          currentEmployeeModelList: listCurrentEmployee,
          previousEmployeeModelList:listPreviousEmployee,totalRecords: result.length,
          shouldShowRoleDialog: false));
    });

    // update employee from hive
    on<UpdateEmployee>((event, emit) async {
      emit(
        state.copyWith(isLoading: true),
      );
      await employeeService.updateEmployee(event.employee);

      final result = await employeeService.getEmployees();
      List<EmployeeModel> listCurrentEmployee=[];
      List<EmployeeModel> listPreviousEmployee=[];

      result.forEach((employee) {
        if (employee.toDate.isEmpty) {
          listCurrentEmployee.add(employee);
        } else {
          listPreviousEmployee.add(employee);
        }
      });


      listCurrentEmployee = sortBySaveTime(listCurrentEmployee);
      listPreviousEmployee = sortBySaveTime(listPreviousEmployee);
      emit(EmployeeState(
          isLoading: false,
          currentEmployeeModelList: listCurrentEmployee,
          previousEmployeeModelList:listPreviousEmployee,totalRecords: result.length,
          shouldShowRoleDialog: false));
    });

    on<ShowBottomDialog>((event, emit) async {
      emit(EmployeeState.showRoleDialog(
          currentEmployeeModelList: state.currentEmployeeModelList,
          previousEmployeeModelList: state.previousEmployeeModelList,
          totalRecords:state.totalRecords,
          isOpen: event.isOpen));
    });
  }

  List<EmployeeModel> sortBySaveTime(List<EmployeeModel> employees) {
    employees.sort((a, b) {
      final int timeA = int.tryParse(a.saveTimeMillis) ?? 0;
      final int timeB = int.tryParse(b.saveTimeMillis) ?? 0;

      return timeB.compareTo(timeA);
    });

    return employees;
  }
}
