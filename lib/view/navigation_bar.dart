import "package:bday_fish_calendar/model/model.dart";
import "package:flutter/material.dart";

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) => Card(
    margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),

    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, size: 48),
                onPressed: () {},
              ),
              Text(
                AppModel().selectedYear.toString(),
                style: const TextStyle(fontSize: 48),
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward, size: 48),
                onPressed: () {},
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.add, size: 48),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.login, size: 48),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
