import "package:bday_fish_calendar/extensions/datetime.dart";
import "package:bday_fish_calendar/view/calendar/week.dart";
import "package:flutter/material.dart";

class MonthWidget extends StatelessWidget {
  const MonthWidget({required this.time, super.key});

  final DateTime time;

  @override
  Widget build(BuildContext context) {
    final List<List<DateTime>> monthWeeks = time.monthWeeks;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          time.monthName,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        for (final week in monthWeeks)
          WeekWidget(time: week.first, month: time.month),
      ],
    );
  }
}
