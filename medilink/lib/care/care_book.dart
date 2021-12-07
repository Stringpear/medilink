// // Copyright 2019 Aleksander Woźniak
// // SPDX-License-Identifier: Apache-2.0
//
// import 'dart:collection';
//
// import 'package:table_calendar/table_calendar.dart';
//
// class Event {
//   final String title;
//
//   const Event(this.title);
//
//   @override
//   String toString() => title;
// }
//
// var CareEvents = {
//   DateTime.utc(2021,12,23):[Event('정기 케어 상담, 2pm')],
//   DateTime.utc(2021,12,29):[Event('정기 케어 상담, 2pm')],
//   DateTime.utc(2021,12,15):[Event('정기 케어 상담, 2pm')],
//   DateTime.utc(2021,12,8):[Event('정기 케어 상담, 2pm')],
//   DateTime.utc(2022,1,5):[Event('정기 케어 상담, 2pm')]
// };
//

List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
    (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);
