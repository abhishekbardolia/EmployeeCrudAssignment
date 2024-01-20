import 'package:developer_assignment/constant/color.dart';
import 'package:developer_assignment/utils/calendar/widget/src/awesome_calendar.dart';
import 'package:flutter/material.dart';

import '../utils/calendar_helper.dart';

class DefaultDayTile extends StatelessWidget {
  const DefaultDayTile({
    required this.date,
    this.onTap,
    this.currentDayBorderColor,
    this.selectedDayColor,
  });

  /// The date to show
  final DateTime date;

  /// Function to call when the day is clicked
  final void Function(DateTime datetime)? onTap;

  /// Background color of the day when it is selected
  final Color? selectedDayColor;

  /// Border color of the current day (DateTime.now())
  final Color? currentDayBorderColor;

  @override
  Widget build(BuildContext context) {
    final bool isToday = CalendarHelper.isToday(date);

    final bool daySelected = AwesomeCalendar.of(context)!.isDateSelected(date);

    BoxDecoration? boxDecoration;
    if (daySelected) {
      boxDecoration = BoxDecoration(
        color: selectedDayColor ?? AppCustomColor.accentColor,
        shape: BoxShape.circle,
      );
    } else if (isToday) {
      boxDecoration = BoxDecoration(
        border: Border.all(
          color:
          currentDayBorderColor ?? AppCustomColor.accentColor,
          width: 1.0,
        ),
        shape: BoxShape.circle,
      );
    }

    return Expanded(
      child: GestureDetector(
        child: Container(

          height: 40.0,
          decoration: boxDecoration,
          child: Center(
            child: Text(
              '${date.day}',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: daySelected
                    ? Colors.white
                    : Theme.of(context).textTheme.bodyLarge!.color,
                fontSize: 15,
                fontWeight: FontWeight.w400
              ),
            ),
          ),
        ),
        onTap: () => handleTap(context),
        behavior: HitTestBehavior.translucent,
      ),
    );
  }

  void handleTap(BuildContext context) {
    final DateTime day = DateTime(date.year, date.month, date.day, 12, 00);
    if (onTap != null) {
      onTap!(day);
    }

    AwesomeCalendar.of(context)!.setSelectedDate(day);
    AwesomeCalendar.of(context)!.setCurrentDate(day);
  }
}