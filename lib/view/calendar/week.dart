import "package:bday_fish_calendar/extensions/datetime.dart";
import "package:bday_fish_calendar/view/calendar/day.dart";
import "package:flutter/material.dart";

class WeekWidget extends StatelessWidget {
  const WeekWidget({required this.time, super.key});

  final DateTime time;

  @override
  Widget build(BuildContext context) {
    final List<DateTime?> weekDays = time.weekDays;

    final int thisMonth = time.month;

    final List<DateTime?> daysThisMonth = [];
    for (final day in weekDays) {
      if (day?.month == thisMonth) {
        daysThisMonth.add(day);
      } else {
        daysThisMonth.add(null);
      }
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: daysThisMonth.map((day) => DayWidget(time: day)).toList(),
    );
  }
}
