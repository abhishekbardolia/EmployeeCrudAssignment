import 'package:developer_assignment/constant/color.dart';
import 'package:developer_assignment/core/add_employee/domain/bloc/employee_bloc.dart';
import 'package:developer_assignment/di.dart';
import 'package:developer_assignment/hive/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../constant/assets.dart';
import '../../../constant/dimens.dart';
import '../../../utils/calendar/utils/selection_mode_enum.dart';
import '../../../utils/calendar/utils/utils.dart';
import '../../../utils/calendar/widget/src/awesome_calendar_dialog.dart';
import '../../../utils/enum.dart';
import '../../../utils/widget/custom_button.dart';
import '../../../utils/widget/custom_text_field.dart';
import '../data/role.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeForm extends StatelessWidget {
  EmployeeForm({super.key, required this.type, this.employeeItem}) {
    _employeeNameController.text = employeeItem?.employeeName ?? '';
    _roleController.text = employeeItem?.role ?? '';
    _fromDateController.text = (employeeItem != null
        ? Utils.isToday(DateFormat('dd MMM yyyy').parse(employeeItem!.fromDate))
            ? "Today"
            : employeeItem!.fromDate
        : "Today");
    _toDateController.text = employeeItem != null
        ? employeeItem!.toDate.isNotEmpty
            ? (Utils.isToday(
                    DateFormat('dd MMM yyyy').parse(employeeItem!.toDate))
                ? "Today"
                : employeeItem!.toDate)
            : ""
        : '';
  }

  final ActionType type;
  final EmployeeModel? employeeItem;
  final EmployeeBloc _employeeBloc = injector<EmployeeBloc>();
  final TextEditingController _employeeNameController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _fromDateController = TextEditingController();
  final TextEditingController _toDateController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return BlocProvider.value(
      value: _employeeBloc,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text("Add Employee Details"),
          ),
          body: BlocConsumer<EmployeeBloc, EmployeeState>(
            listener: (context, state) async {
              if (state.shouldShowRoleDialog) {
                await _showBottomSheet(context);
                _employeeBloc.add(const ShowBottomDialog(isOpen: false));
              }
              if (state.isLoading) {
                EasyLoading.show();
              } else {
                EasyLoading.dismiss();
              }
            },
            builder: (context, state) {
              return Form(
                key: _formKey,
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.all(AppDimensions.normalPadding2),
                        child: Column(
                          children: [
                            CustomTextField(
                              controller: _employeeNameController,
                              asset: Assets.assetsPerson,
                              readOnly: false,
                              hint: "Employee name",
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter name';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            CustomDropDownTextField(
                              hint: 'Select role',
                              controller: _roleController,
                              readOnly: true,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Select role';
                                }
                                return null;
                              },
                              onTap: () {
                                _employeeBloc
                                    .add(const ShowBottomDialog(isOpen: true));
                              },
                              asset: Assets.assetsBag,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: CustomTextField(
                                    controller: _fromDateController,
                                    asset: Assets.assetsDate,
                                    readOnly: true,
                                    hint: "Today",
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Enter date';
                                      }
                                      return null;
                                    },
                                    onTap: () async {
                                      await singleSelectPicker(context,
                                          controller: _fromDateController,
                                          isNoDateAvailable: false);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: SvgPicture.asset(
                                        Assets.assetsRightArrow,
                                        semanticsLabel: 'right-arrow'),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: CustomTextField(
                                    controller: _toDateController,
                                    asset: Assets.assetsDate,
                                    readOnly: true,
                                    hint: "No date",
                                    onTap: () async {
                                      await singleSelectPicker(context,
                                          controller: _toDateController,
                                          isNoDateAvailable: true);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth,
                      height: AppDimensions.dividerHeight,
                      color: AppCustomColor.dividerColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimensions.normalPadding2,
                          vertical: AppDimensions.normalPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomButton(
                            text: "Cancel",
                            backgroundColor: AppCustomColor.buttonColor,
                            textColor: AppCustomColor.accentColor,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          CustomButton(
                            text: type == ActionType.addEmployee
                                ? "Save"
                                : "Update",
                            onPressed: () {
                              _saveData(context);
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )),
    );
  }

  Future<void> singleSelectPicker(BuildContext context,
      {required TextEditingController controller,
      required bool isNoDateAvailable}) async {
    final selectedDate = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AwesomeCalendarDialog(
          selectionMode: SelectionMode.single,
          noDateAvailable: isNoDateAvailable,
          alreadySelectedDate: controller.text.isNotEmpty
              ? controller.text == "Today"
                  ? DateFormat('d MMM y').format(DateTime.now())
                  : controller.text
              : "",
        );
      },
    );
    if (controller.text.isNotEmpty && selectedDate != null) {
      // controller.text = selectedDate;
      controller.text = selectedDate == "Today"
          ? "Today"
          : Utils.isToday(DateFormat('dd MMM yyyy').parse(selectedDate))
              ? "Today"
              : selectedDate;
    } else if (controller.text.isEmpty && selectedDate == null) {
      controller.text = "";
    } else if (controller.text.isEmpty && selectedDate != null) {
      controller.text = selectedDate == "Today"
          ? "Today"
          : Utils.isToday(DateFormat('dd MMM yyyy').parse(selectedDate))
          ? "Today"
          : selectedDate;
    } else if (selectedDate == null) {
      controller.text = "";
    } else if (selectedDate == "Today") {
      controller.text = "Today";
    }
    if (_fromDateController.text.isNotEmpty &&
        _toDateController.text.isNotEmpty) {
      if (DateFormat('dd MMM yyyy')
          .parse(_toDateController.text == "Today"
              ? DateFormat('d MMM y').format(DateTime.now())
              : _toDateController.text)
          .isBefore(DateFormat('dd MMM yyyy').parse(
              _fromDateController.text == "Today"
                  ? DateFormat('d MMM y').format(DateTime.now())
                  : _fromDateController.text))) {
        _showErrorAlertDialog(context, "Invalid Date Range",
                "Please correct your date selection.")
            .then((value) => _toDateController.text = "");
      }
    }
  }

  Future<void> _showBottomSheet(BuildContext context) async {
    showModalBottomSheet<void>(
      backgroundColor: Colors.white,
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
      ),
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppDimensions.bottomSheetRadius))),
      builder: (BuildContext context) {
        return SizedBox(
          height: AppDimensions.bottomSheetSize,
          child: ListView.separated(
            itemCount: listEmployeeRole.length,
            shrinkWrap: false,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                color: AppCustomColor.dividerColor,
                height: AppDimensions.dividerHeight,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Center(
                  child: Text(
                    listEmployeeRole[index],
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                onTap: () {
                  _roleController.text = listEmployeeRole[index];
                  _employeeBloc.add(const ShowBottomDialog(isOpen: false));
                  Navigator.pop(context);
                },
              );
            },
          ),
        );
      },
    );
  }

  void _saveData(BuildContext context) {
    final employeeName = _employeeNameController.value.text.trim();
    final role = _roleController.value.text;
    final fromDate = _fromDateController.value.text;
    if (employeeName.isEmpty || role.isEmpty || fromDate.isEmpty) {
      _showErrorAlertDialog(context, "Empty Fields",
          "Please complete all required fields before saving.");
      return;
    }
    if (type == ActionType.addEmployee) {
      _employeeBloc.add(AddEmployee(
          employee: EmployeeModel(
              employeeName: _employeeNameController.text,
              fromDate: _fromDateController.text == "Today"
                  ? DateFormat('d MMM y').format(DateTime.now())
                  : _fromDateController.text,
              role: _roleController.text,
              toDate: _toDateController.text == "Today"
                  ? DateFormat('d MMM y').format(DateTime.now())
                  : _toDateController.text,
              saveTimeMillis:
                  DateTime.now().millisecondsSinceEpoch.toString())));
    } else {
      _employeeBloc.add(UpdateEmployee(
          employee: EmployeeModel(
              id: employeeItem!.id,
              employeeName: _employeeNameController.text,
              fromDate: _fromDateController.text == "Today"
                  ? DateFormat('d MMM y').format(DateTime.now())
                  : _fromDateController.text,
              role: _roleController.text,
              toDate: _toDateController.text == "No date"
                  ? ""
                  : _toDateController.text == "Today"
                      ? DateFormat('d MMM y').format(DateTime.now())
                      : _toDateController.text,
              saveTimeMillis:
                  DateTime.now().millisecondsSinceEpoch.toString())));
    }
    Navigator.pop(context);
  }

  Future<void> _showErrorAlertDialog(
      BuildContext context, String title, String message) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Theme(
          data: ThemeData(
            dialogBackgroundColor: Colors.white,
          ),
          child: AlertDialog(
            backgroundColor: Colors.white,
            title: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: AppCustomColor.textTitleCalendarColor, fontSize: 22),
            ),
            content:
                Text(message, style: Theme.of(context).textTheme.titleMedium),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }

  updateData(BuildContext context) {}
}
