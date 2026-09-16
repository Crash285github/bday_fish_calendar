import "package:bday_fish_calendar/view/calendar/month.dart";
import "package:flutter/material.dart";

class YearWidget extends StatelessWidget {
  const YearWidget({required this.year, super.key});

  final int year;

  @override
  Widget build(BuildContext context) => FittedBox(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int month = 1; month <= 12; month += 4)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 4; i++)
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: FittedBox(
                    alignment: Alignment.topCenter,
                    child: MonthWidget(time: DateTime(year, month + i)),
                  ),
                ),
            ],
          ),
      ],
    ),
  );
}
