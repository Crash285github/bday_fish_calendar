extension DateTimeExtensions on DateTime {
  bool get isMonday => weekday == DateTime.monday;
  bool get isTuesday => weekday == DateTime.tuesday;
  bool get isWednesday => weekday == DateTime.wednesday;
  bool get isThursday => weekday == DateTime.thursday;
  bool get isFriday => weekday == DateTime.friday;
  bool get isSaturday => weekday == DateTime.saturday;
  bool get isSunday => weekday == DateTime.sunday;

  DateTime get lastMonday {
    final int daysSinceMonday = (weekday - DateTime.monday) % 7;
    return subtract(Duration(days: daysSinceMonday));
  }

  DateTime get nextMonday {
    final int daysUntilNextMonday = (DateTime.monday - weekday) % 7;
    return add(Duration(days: daysUntilNextMonday));
  }

  List<DateTime> get weekDays {
    final int daysSinceMonday = (weekday - DateTime.monday) % 7;
    final int lastMonday = day - daysSinceMonday;
    return List<DateTime>.generate(
      7,
      (index) => DateTime(year, month, lastMonday + index),
    );
  }

  List<DateTime> get monthDays {
    final int daysInMonth = DateTime(year, month + 1, 0).day;
    return List<DateTime>.generate(
      daysInMonth,
      (index) => DateTime(year, month, index + 1),
    );
  }

  List<DateTime?> get monthDaysPadded {
    final DateTime firstDay = DateTime(year, month).lastMonday;
    final DateTime lastDay = DateTime(year, month + 1).nextMonday;

    final List<DateTime?> days = [];

    for (
      DateTime day = firstDay;
      day.isBefore(lastDay) || day.isAtSameMomentAs(lastDay);
      day = day.add(const Duration(days: 1))
    ) {
      if (day.month == month) {
        days.add(day);
      } else {
        days.add(null);
      }
    }

    return days;
  }

  List<List<DateTime>> get monthWeeks {
    final DateTime firstDay = DateTime(year, month).lastMonday;
    final DateTime lastDay = DateTime(year, month + 1, 0).lastMonday;
    final List<List<DateTime>> weeks = [];

    for (
      DateTime weekStart = firstDay;
      weekStart.isBefore(lastDay) || weekStart.isAtSameMomentAs(lastDay);
      weekStart = weekStart.add(const Duration(days: 7))
    ) {
      weeks.add(weekStart.weekDays);
    }

    return weeks;
  }

  String get ordinalDay {
    if (day >= 11 && day <= 13) {
      return "${day}th";
    }
    switch (day % 10) {
      case 1:
        return "${day}st";
      case 2:
        return "${day}nd";
      case 3:
        return "${day}rd";
      default:
        return "${day}th";
    }
  }

  bool get isToday =>
      year == DateTime.now().year &&
      month == DateTime.now().month &&
      day == DateTime.now().day;

  String get monthName => {
    1: "January",
    2: "February",
    3: "March",
    4: "April",
    5: "May",
    6: "June",
    7: "July",
    8: "August",
    9: "September",
    10: "October",
    11: "November",
    12: "December",
  }[month]!;
}
