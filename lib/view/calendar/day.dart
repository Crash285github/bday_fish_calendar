import "package:bday_fish_calendar/extensions/datetime.dart";
import "package:flutter/material.dart";

class DayWidget extends StatefulWidget {
  const DayWidget({required this.time, super.key});

  final DateTime? time;

  @override
  State<DayWidget> createState() => _DayWidgetState();
}

class _DayWidgetState extends State<DayWidget> {
  bool get isToday {
    final now = DateTime.now();
    return now.year == widget.time?.year &&
        now.month == widget.time?.month &&
        now.day == widget.time?.day;
  }

  @override
  Widget build(BuildContext context) => SizedBox(
    height: 64,
    width: 64,
    child: Center(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isToday ? Theme.of(context).colorScheme.primary : null,
          borderRadius: BorderRadius.circular(512),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: FittedBox(
            child: Text(
              widget.time?.ordinalDay ?? "",
              style: TextStyle(
                fontFamily: "BabyDoll",
                fontSize: 16,
                height: 1,
                color: !isToday
                    ? null
                    : Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
