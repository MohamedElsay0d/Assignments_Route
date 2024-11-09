class Holiday {
  String name;
  int day;
  String month;

  Holiday(this.name, this.day, this.month);

  static bool inSameMonth(Holiday holiday1, Holiday holiday2) {
    return holiday1.month.toLowerCase() == holiday2.month.toLowerCase();
  }

  static double avgDate(List<Holiday> holidays) {
    int totalDays = 0;
    for (var holiday in holidays) {
      totalDays += holiday.day;
    }
    return totalDays / holidays.length;
  }
}

void main() {
  var independenceDay = Holiday("Independence Day", 4, "July");

  var anotherHoliday = Holiday("Christmas", 25, "December");

  bool sameMonth = Holiday.inSameMonth(independenceDay, anotherHoliday);
  print("Are both holidays in the same month? $sameMonth");

  var holidays = [
    Holiday("New Year's Day", 1, "January"),
    independenceDay,
    anotherHoliday,
    Holiday("Halloween", 31, "October"),
    Holiday("Christmas", 25, "December")
  ];

  double averageDay = Holiday.avgDate(holidays);
  print("Average day of holidays: $averageDay");
}
