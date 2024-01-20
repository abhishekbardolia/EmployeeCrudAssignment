import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../../constant/assets.dart';
import '../../../../constant/color.dart';
import '../../../widget/custom_button.dart';
import '../../utils/selection_mode_enum.dart';
import '../../utils/utils.dart';
import '../day_tile_builder.dart';
import 'awesome_calendar.dart';

/// A custom date time picker that uses AwesomeCalendar
class AwesomeCalendarDialog extends StatefulWidget {
  const AwesomeCalendarDialog({
    this.initialDate,
    this.selectedDates,
    this.startDate,
    this.endDate,
    this.canToggleRangeSelection = false,
    this.selectionMode = SelectionMode.single,
    this.rangeToggleText = 'Select a date range',
    this.confirmBtnText = 'OK',
    this.cancelBtnText = 'CANCEL',
    this.dayTileBuilder,
    this.weekdayLabels,
    this.title,
    required this.noDateAvailable, required this.alreadySelectedDate
  });

  /// Initial date of the date picker, used to know which month needs to be shown
  final DateTime? initialDate;
  final bool noDateAvailable;
  final String alreadySelectedDate;

  /// The current selected dates
  final List<DateTime>? selectedDates;

  /// First date of the calendar
  final DateTime? startDate;

  /// Last date of the calendar
  final DateTime? endDate;

  /// It will add a toggle to activate/deactivate the range selection mode
  final bool canToggleRangeSelection;

  /// [single, multi, range]
  /// The user can switch between multi and range if you set [canToggleRangeSelection] to true
  final SelectionMode selectionMode;

  /// Text of the range toggle if canToggleRangeSelection is true
  final String rangeToggleText;

  /// Text of the confirm button
  final String confirmBtnText;

  /// Text of the cancel button
  final String cancelBtnText;

  /// The builder to create a day widget
  final DayTileBuilder? dayTileBuilder;

  /// A Widget that will be shown on top of the Dailog as a title
  final Widget? title;

  /// The weekdays widget to show above the calendar
  final Widget? weekdayLabels;

  @override
  _AwesomeCalendarDialogState createState() => _AwesomeCalendarDialogState(
        currentMonth: initialDate,
        selectedDates: selectedDates,
        selectionMode: selectionMode,
      );
}

class _AwesomeCalendarDialogState extends State<AwesomeCalendarDialog> {
  _AwesomeCalendarDialogState({
    this.currentMonth,
    this.selectedDates,
    this.selectionMode = SelectionMode.single,
  }) {
    currentMonth ??= DateTime.now();
  }

  List<DateTime>? selectedDates;
  DateTime? currentMonth;
  String? selectedDate;
  SelectionMode selectionMode;
  GlobalKey<AwesomeCalendarState> calendarStateKey =
      GlobalKey<AwesomeCalendarState>();

  @override
  void initState() {
    super.initState();
    if(!widget.noDateAvailable){
      if(widget.alreadySelectedDate.isNotEmpty){
        selectedDate=Utils.isToday(DateFormat('dd MMM yyyy').parse(widget.alreadySelectedDate))?"Today":widget.alreadySelectedDate;
        DateTime dateTime = DateFormat('dd MMM yyyy').parse(widget.alreadySelectedDate);
        WidgetsBinding.instance.addPostFrameCallback((_) {
          calendarStateKey.currentState!.setCurrentDate(dateTime);
          calendarStateKey.currentState!.setSelectedDate(dateTime);
        });
      }else {
        selectedDate = "Today";
      }
    }else{
      if(widget.alreadySelectedDate.isNotEmpty){
        // selectedDate=widget.alreadySelectedDate;
        selectedDate=Utils.isToday(DateFormat('dd MMM yyyy').parse(widget.alreadySelectedDate))?"Today":widget.alreadySelectedDate;
        if(selectedDate!="No date") {
          DateTime dateTime = DateFormat('dd MMM yyyy').parse(widget.alreadySelectedDate);
          WidgetsBinding.instance.addPostFrameCallback((_) {
            calendarStateKey.currentState!.setCurrentDate(dateTime);
            calendarStateKey.currentState!.setSelectedDate(dateTime);
          });
        }else{
          selectedDate="No date";
        }
      }else {
        selectedDate="No date";
      }

    }
  }
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        dialogBackgroundColor: Colors.white,
      ),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: Colors.white,
        insetPadding: const EdgeInsets.symmetric(horizontal: 15),
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                if (widget.title != null) widget.title!,
                SizedBox(
                  height: 15,
                ),
                NoDateCtcWidget(),


                Padding(
                  padding: const EdgeInsets.only(bottom: 5, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          calendarStateKey.currentState!.setCurrentDate(DateTime(
                              currentMonth!.year, currentMonth!.month - 1));
                        },
                        child: SvgPicture.asset(
                          Assets.assetsLeftArrowCal,
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          _selectYearAndMonth(context);
                        },
                        child: Container(
                          width: 160,
                          child: Center(
                            child: Text(
                              DateFormat('yMMMM').format(currentMonth!),
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                  color: AppCustomColor.textTitleCalendarColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          calendarStateKey.currentState!.setCurrentDate(DateTime(
                              currentMonth!.year, currentMonth!.month + 1));
                        },
                        child: SvgPicture.asset(
                          Assets.assetsRightArrowCal,
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: AwesomeCalendar(
                    key: calendarStateKey,
                    startDate: widget.startDate ?? DateTime(2018),
                    endDate: widget.endDate ?? DateTime(2100),
                    selectedSingleDate: currentMonth,
                    selectedDates: selectedDates,
                    selectionMode: selectionMode,
                    onPageSelected: (DateTime? start, DateTime? end) {
                      setState(() {
                        currentMonth = start;
                      });
                    },
                    onTap: (datetime){
                      setState(() {
                        selectedDate=DateFormat('d MMM y').format(datetime);
                      });
                    },
                    dayTileBuilder: widget.dayTileBuilder,
                    weekdayLabels: widget.weekdayLabels,
                  ),
                ),
                if (widget.canToggleRangeSelection &&
                    selectionMode != SelectionMode.single)
                  ListTile(
                    title: Text(
                      widget.rangeToggleText,
                      style: const TextStyle(fontSize: 13),
                    ),
                    leading: Switch(
                      value: selectionMode == SelectionMode.range,
                      onChanged: (bool value) {
                        setState(() {
                          selectionMode =
                              value ? SelectionMode.range : SelectionMode.multi;
                          selectedDates = <DateTime>[];
                          calendarStateKey.currentState!.selectedDates =
                              selectedDates;
                        });
                      },
                    ),
                  ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: AppCustomColor.dividerColor,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              Assets.assetsDate,
                              height: 30,
                            ),
                            SizedBox(width: 8),
                            // Adjust the spacing between leading and title
                            Text(
                              selectedDate !=
                                      null
                                  ? selectedDate!
                                  : "No date",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color:
                                    Theme.of(context).textTheme.bodyLarge!.color,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          CustomButton(
                            text: "Cancel",
                            backgroundColor: AppCustomColor.buttonColor,
                            textColor: AppCustomColor.accentColor,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CustomButton(
                            text: "Save",
                            onPressed: () {
                              if(selectedDate!="No date") {
                                Navigator.of(context).pop(
                                    selectedDate
                                );
                              }else{
                                Navigator.of(context).pop();
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // actions: <Widget>[
        //   TextButton(
        //     child: Text(widget.cancelBtnText),
        //     onPressed: () => Navigator.of(context).pop(),
        //   ),
        //   TextButton(
        //     child: Text(widget.confirmBtnText),
        //     onPressed: () {
        //       final AwesomeCalendarState? calendar =
        //           calendarStateKey.currentState;
        //       Navigator.of(context).pop(
        //         widget.selectionMode == SelectionMode.single
        //             ? calendar!.selectedSingleDate
        //             : calendar!.selectedDates,
        //       );
        //     },
        //   ),
        // ],
      ),
    );
  }



  Future<void> _selectYearAndMonth(BuildContext context) async {
    int? selectedYear;
    int? selectedMonth;

    // Select Year
    selectedYear = await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return Theme(
          data: ThemeData(
            dialogBackgroundColor: Colors.white,
          ),
          child: SimpleDialog(
            title: Text('Select Year'),
            children: List.generate(50, (index) {
              final int year = DateTime.now().year - index;
              return ListTile(
                title: Text(year.toString()),
                onTap: () {
                  Navigator.pop(context, year);
                },
              );
            }),
          ),
        );
      },
    );

    if (selectedYear != null) {
      // Select Month
      selectedMonth = await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return Theme(
            data: ThemeData(
              dialogBackgroundColor: Colors.white,
            ),
            child: SimpleDialog(
              title: Text('Select Month'),
              children: List.generate(12, (index) {
                final int month = index + 1;
                return ListTile(
                  title: Text(_getMonthName(month)),
                  onTap: () {
                    Navigator.pop(context, month);
                  },
                );
              }),
            ),
          );
        },
      );
    }

    // Process selectedYear and selectedMonth
    if (selectedYear != null && selectedMonth != null) {
      DateTime _selectedDate = DateTime(selectedYear, selectedMonth, 1);
      calendarStateKey.currentState!.setCurrentDate(_selectedDate);
    }
  }

  String _getMonthName(int month) {
    switch (month) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return '';
    }
  }


  Widget CallToAction({
    required String ButtonTitle1,
    required String ButtonTitle2,
    Color? backgroundColor1,
    Color? backgroundColor2,
    Color? textColor1,
    Color? textColor2,
    required VoidCallback? onBtn1Pressed,
    required VoidCallback? onBtn2Pressed,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 4.0),
            child: CustomButton(
              text: ButtonTitle1,
              backgroundColor: backgroundColor1 ?? null,
              textColor: textColor1 ?? null,
              onPressed: onBtn1Pressed,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 8.0),
            child: CustomButton(
              text: ButtonTitle2,
              backgroundColor: backgroundColor2 ?? null,
              textColor: textColor2 ?? null,
              onPressed: onBtn2Pressed,
            ),
          ),
        ),
      ],
    );
  }

  Widget NoDateCtcWidget() {
    if(widget.noDateAvailable) {
      return Column(
        children: [
          CallToAction(
              ButtonTitle1: "No date",
              ButtonTitle2: "Today",
              backgroundColor2: AppCustomColor.buttonColor,
              textColor2: AppCustomColor.accentColor,
              onBtn1Pressed: () {
                calendarStateKey.currentState!.removeAllDate((datetime){
                  setState(() {
                    selectedDate = "No date";
                  });
                });

              },
              onBtn2Pressed: () {
                // final void Function(DateTime datetime)? onTap;
                calendarStateKey.currentState!.setCurrentDate(DateTime.now());
                calendarStateKey.currentState!.setSelectedDate(DateTime.now(),);
                setState(() {
                  // selectedDate = DateFormat('d MMM y').format(DateTime.now());
                  selectedDate = "Today";
                });
              }),
          SizedBox(
            height: 10,
          ),
        ],
      );
    }else{
      return Column(
        children: [
          CallToAction(
              ButtonTitle1: "Today",
              ButtonTitle2: "Next Monday",
              backgroundColor1: AppCustomColor.buttonColor,
              textColor1: AppCustomColor.accentColor,
              onBtn1Pressed: () {
                calendarStateKey.currentState!.setCurrentDate(DateTime.now());
                calendarStateKey.currentState!.setSelectedDate(DateTime.now());
                setState(() {
                  // selectedDate=DateFormat('d MMM y').format(DateTime.now());
                  selectedDate="Today";
                });
              },
              onBtn2Pressed: () {
                calendarStateKey.currentState!.selectNextMonday((datetime) {
                  setState(() {
                    selectedDate=DateFormat('d MMM y').format(datetime);
                  });
                },);
              }),
          SizedBox(
            height: 10,
          ),
          CallToAction(
              ButtonTitle1: "Next Tuesday",
              ButtonTitle2: "After 1 week",
              backgroundColor1: AppCustomColor.buttonColor,
              textColor1: AppCustomColor.accentColor,
              backgroundColor2: AppCustomColor.buttonColor,
              textColor2: AppCustomColor.accentColor,
              onBtn1Pressed: () {
                calendarStateKey.currentState!.selectNextTuesday((datetime){
                  setState(() {
                    selectedDate=DateFormat('d MMM y').format(datetime);
                  });
                });

              },
              onBtn2Pressed: () {
                calendarStateKey.currentState!.selectNextWeek((datetime){
                  setState(() {
                    selectedDate=DateFormat('d MMM y').format(datetime);
                  });
                });
              }),
          SizedBox(
            height: 20,
          ),
        ],
      );
    }
  }
}
