part of 'employee_bloc.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState({
    required bool isLoading,
    required List<EmployeeModel> currentEmployeeModelList,
    required List<EmployeeModel> previousEmployeeModelList,
    required int totalRecords,
    required bool shouldShowRoleDialog,
  }) = _EmployeeState;

  factory EmployeeState.initial() {
    return const EmployeeState(
      isLoading: false,
      currentEmployeeModelList: [],
      previousEmployeeModelList: [],
      totalRecords: 0,
      shouldShowRoleDialog: false,
    );
  }

  factory EmployeeState.showRoleDialog(
      {List<EmployeeModel>? currentEmployeeModelList,
      List<EmployeeModel>? previousEmployeeModelList,
      bool? isOpen,
      int? totalRecords}) {
    return EmployeeState(
      isLoading: false,
      currentEmployeeModelList: currentEmployeeModelList ?? [],
      previousEmployeeModelList: previousEmployeeModelList ?? [],
      totalRecords: totalRecords?? 0,
      shouldShowRoleDialog: isOpen!,
    );
  }
}
