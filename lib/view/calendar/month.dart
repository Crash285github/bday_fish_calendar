import "package:bday_fish_calendar/extensions/datetime.dart";
import "package:bday_fish_calendar/view/calendar/day.dart";
import "package:flutter/material.dart";

class MonthWidget extends StatelessWidget {
  const MonthWidget({required this.time, super.key});

  final DateTime time;

  @override
  Widget build(BuildContext context) => Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColoredBox(
          color: Theme.of(context).colorScheme.onPrimary,
          child: Center(
            child: Text(
              time.monthName,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: "BabyDoll",
              ),
            ),
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 7,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [...time.monthDaysPadded.map((e) => DayWidget(time: e))],
          ),
        ),
      ],
    ),
  );
}
