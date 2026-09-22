import "package:bday_fish_calendar/view/calendar/month.dart";
import "package:flutter/material.dart";

class YearWidget extends StatelessWidget {
  const YearWidget({required this.year, super.key});

  final int year;

  @override
  Widget build(BuildContext context) => GridView.count(
    crossAxisCount: 4,
    childAspectRatio: 10 / 11,
    padding: const EdgeInsets.all(32),
    mainAxisSpacing: 16,
    crossAxisSpacing: 16,
    children: [
      for (int month = 1; month <= 12; month++)
        MonthWidget(time: DateTime(year, month)),
    ],
  );
}
