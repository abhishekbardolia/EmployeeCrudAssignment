import 'package:developer_assignment/core/add_employee/domain/bloc/employee_bloc.dart';
import 'package:get_it/get_it.dart';

import 'hive/employee_detail_service.dart';
import 'hive/employee_functions.dart';

final injector = GetIt.instance;

Future<void> injectDependencies() async {
  injector
      .registerLazySingleton<EmployeeFunctions>(() => EmployeeFunctions());

  //Bloc
  injector.registerLazySingleton(() => EmployeeBloc(
        employeeService: injector(),
      ));
}
