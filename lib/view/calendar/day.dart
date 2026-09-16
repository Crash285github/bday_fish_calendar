import "package:bday_fish_calendar/extensions/datetime.dart";
import "package:flutter/material.dart";

class DayWidget extends StatelessWidget {
  const DayWidget({required this.time, super.key});

  final DateTime? time;

  @override
  Widget build(BuildContext context) => ColoredBox(
    color: time?.isToday == true
        ? Colors.purple
        : Theme.of(context).colorScheme.onPrimary,
    child: SizedBox(
      height: 64,
      width: 64,
      child: Center(child: Text(time?.ordinalDay ?? "")),
    ),
  );
}
