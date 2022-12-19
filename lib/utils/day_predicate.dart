class DayPredicate {
  static final List<String> _defaultDayList = ["Monday", "Wednesday", "Friday"];
  static const Map<String, int> _weekdayIndex = {"Monday": 1, "Tuesday": 2, "Wednesday": 3, "Thursday": 4, "Friday": 5, "Saturday": 6, "Sunday": 7};

  bool predicate(DateTime day) {
    for (var i = 0; i < _defaultDayList.length; i++) {
      final forwardDate = calculateDate(_defaultDayList[i]);

      if ((day.isAfter(DateTime(forwardDate.year, forwardDate.month, forwardDate.day - 1)) &&
          day.isBefore(DateTime(forwardDate.year, forwardDate.month, forwardDate.day + 1)))) {
        return true;
      }
    }

    return false;
  }

  DateTime calculateDate(String preferredDay) {
    DateTime today = DateTime.now();
    int todayIndex = today.weekday;
    int weekdayCount = 7;

    int? index = _weekdayIndex[preferredDay];
    if (todayIndex <= index!) {
      int addingDay = index - todayIndex;
      final forwardDate = today.add(Duration(days: addingDay));
      return forwardDate;
    } else {
      int addingDay = weekdayCount - (todayIndex - index);
      final forwardDate = today.add(Duration(days: addingDay));
      return forwardDate;
    }
  }
}
