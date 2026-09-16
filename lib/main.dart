import "package:bday_fish_calendar/theme.dart";
import "package:flutter/material.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    theme: appTheme,
    home: const Scaffold(body: Center(child: Text("Happy Birthday!"))),
  );
}
