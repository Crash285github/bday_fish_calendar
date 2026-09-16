import "package:bday_fish_calendar/view/calendar/year.dart";
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Scaffold(
      body: Center(child: YearWidget(year: now.year)),
    );
  }
}
