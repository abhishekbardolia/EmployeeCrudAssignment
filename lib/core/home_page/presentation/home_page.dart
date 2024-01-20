import 'package:developer_assignment/hive/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant/assets.dart';
import '../../../constant/color.dart';
import '../../../constant/dimens.dart';
import '../../../di.dart';
import '../../../utils/enum.dart';
import '../../add_employee/domain/bloc/employee_bloc.dart';
import '../../add_employee/presentation/employeement_form.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage({super.key, required this.title});

  final EmployeeBloc _employeeBloc = injector<EmployeeBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _employeeBloc..add(const GetEmployees()),
      child: Scaffold(
        backgroundColor: AppCustomColor.backgroundColor,
        appBar: AppBar(
          title: Text(title),
        ),
        body: body(context),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppCustomColor.accentColor,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    EmployeeForm(type: ActionType.addEmployee),
              ),
            );
          },
          tooltip: 'Create Employee',
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusDimens),
          ),
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }

  Widget body(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.3;
    return BlocConsumer<EmployeeBloc, EmployeeState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.previousEmployeeModelList.isEmpty &&
            state.currentEmployeeModelList.isEmpty) {
          return Center(
            child: Image.asset(Assets.assetsNoDataFound, height: imageHeight),
          );
        }
        return SizedBox(
          child: Column(
            children: [
              ((state.currentEmployeeModelList.isNotEmpty ||
                          state.previousEmployeeModelList.isNotEmpty) &&
                      state.totalRecords <= 5)
                  ? SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          state.currentEmployeeModelList.isNotEmpty
                              ? flexibleListView(context, "Current employee",
                                  state.currentEmployeeModelList)
                              : Container(),
                          state.previousEmployeeModelList.isNotEmpty
                              ? flexibleListView(context, "Previous employee",
                                  state.previousEmployeeModelList)
                              : Container(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: AppDimensions.normalPadding2),
                            child: Text(
                              "Swipe left to delete",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontSize: 15,
                                      color:
                                          AppCustomColor.descriptionTextColor),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Expanded(
                      child: Column(
                        children: [
                          state.currentEmployeeModelList.isNotEmpty
                              ? currentEmployeeContainer(
                                  context,
                                  "Current employee",
                                  state.currentEmployeeModelList)
                              : Container(),
                          state.previousEmployeeModelList.isNotEmpty
                              ? currentEmployeeContainer(
                                  context,
                                  "Previous employee",
                                  state.previousEmployeeModelList)
                              : Container(),
                        ],
                      ),
                    )
            ],
          ),
        );
      },
    );
  }

  Widget currentEmployeeContainer(
    BuildContext context,
    String title,
    List<EmployeeModel> currentEmployeeModelList,
  ) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: AppDimensions.headerContainerHeight,
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.normalPadding2),
          child: Center(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
        ),
        Expanded(
            child: ListView.separated(
          itemCount: currentEmployeeModelList.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              color: AppCustomColor.dividerColor,
              height: AppDimensions.dividerHeight,
            );
          },
          itemBuilder: (context, index) {
            EmployeeModel employee = currentEmployeeModelList[index];
            return Slidable(
              key: Key(employee.id.toString()),
              endActionPane: ActionPane(
                extentRatio: 0.2,
                motion: const ScrollMotion(),
                children: [
                  CustomSlidableAction(
                    onPressed: (_) {
                      _employeeBloc.add(DeleteEmployee(id: employee.id!));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                          Text('${employee.employeeName} has been deleted'),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              _employeeBloc.add(AddEmployee(
                                  employee: EmployeeModel(
                                      employeeName: employee.employeeName,
                                      fromDate: employee.fromDate,
                                      role: employee.role,
                                      toDate: employee.toDate,
                                      id: employee.id,
                                      saveTimeMillis:
                                      employee.saveTimeMillis)));
                            },
                          ),
                        ),
                      );
                    },
                    backgroundColor: AppCustomColor.redSliderBackgroundColor,
                    foregroundColor: Colors.white,
                    child: SvgPicture.asset(
                      'assets/delete1.svg',
                    ),
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmployeeForm(
                          type: ActionType.editEmployee,
                          employeeItem: employee),
                    ),
                  );
                },
                child: Container(
                    color: Colors.white,
                    height: AppDimensions.tileHeight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: AppDimensions.normalPadding2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            employee.employeeName,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            employee.role,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Text(
                            title == "Current employee"
                                ? "From: ${employee.fromDate}"
                                : "${employee.fromDate}-${employee.toDate}",
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ],
                      ),
                    )),
              ),
            );
          },
        )),
      ],
    ));
  }

  flexibleListView(BuildContext context, String title,
      List<EmployeeModel> currentEmployeeModelList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.normalPadding2),
          child: Center(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
        ),
        ListView.separated(
          itemCount: currentEmployeeModelList.length,
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              color: AppCustomColor.dividerColor,
              height: AppDimensions.dividerHeight,
            );
          },
          itemBuilder: (context, index) {
            EmployeeModel employee = currentEmployeeModelList[index];
            return Slidable(
              key: Key(employee.id.toString()),
              endActionPane: ActionPane(
                extentRatio: 0.2,
                motion: const ScrollMotion(),
                children: [
                  CustomSlidableAction(
                    onPressed: (_) {
                      _employeeBloc.add(DeleteEmployee(id: employee.id!));

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text('${employee.employeeName} has been deleted'),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              _employeeBloc.add(AddEmployee(
                                  employee: EmployeeModel(
                                      employeeName: employee.employeeName,
                                      fromDate: employee.fromDate,
                                      role: employee.role,
                                      toDate: employee.toDate,
                                      id: employee.id,
                                      saveTimeMillis:
                                          employee.saveTimeMillis)));
                            },
                          ),
                        ),
                      );
                    },
                    backgroundColor: AppCustomColor.redSliderBackgroundColor,
                    foregroundColor: Colors.white,
                    child: SvgPicture.asset(
                      'assets/delete1.svg',
                    ),
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmployeeForm(
                          type: ActionType.editEmployee,
                          employeeItem: employee),
                    ),
                  );
                },
                child: Container(
                    color: Colors.white,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: AppDimensions.normalPadding2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            employee.employeeName,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            employee.role,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Text(
                            title == "Current employee"
                                ? "From: ${employee.fromDate}"
                                : "${employee.fromDate} - ${employee.toDate}",
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ],
                      ),
                    )),
              ),
            );
          },
        ),
      ],
    );
  }
}
