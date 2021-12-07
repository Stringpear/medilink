
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medilink/primary.dart';
import 'package:table_calendar/table_calendar.dart';
import 'care_book.dart';
import 'package:intl/date_symbol_data_local.dart';

class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}

var CareEvents = {

};

class CareCalendar extends StatefulWidget {
  const CareCalendar({Key? key}) : super(key: key);

  @override
  _CareCalendarState createState() => _CareCalendarState();
}

class _CareCalendarState extends State<CareCalendar> {
  final timeController = new TextEditingController();



  late final ValueNotifier<List<Event>> _selectedEvents;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
    CareEvents.addAll({DateTime.utc(2021, 12, 23): [Event('정기 케어 상담, 2pm')]});
    CareEvents.addAll({ DateTime.utc(2021, 12, 29): [Event('정기 케어 상담, 2pm')],});
    CareEvents.addAll({    DateTime.utc(2021, 12, 15): [Event('정기 케어 상담, 2pm')],});
    CareEvents.addAll({DateTime.utc(2021, 12, 8): [Event('정기 케어 상담, 2pm')],});
    CareEvents.addAll({DateTime.utc(2022, 1, 5): [Event('정기 케어 상담, 2pm')],});

  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    initializeDateFormatting(Localizations.localeOf(context).languageCode); }


  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return CareEvents[day] ?? [];
  }

  List<Event> _getEventsForRange(DateTime start, DateTime end) {
    // Implementation example
    final days = daysInRange(start, end);

    return [
      for (final d in days) ..._getEventsForDay(d),
    ];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _rangeSelectionMode = RangeSelectionMode.toggledOff;
      });

      _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar<Event>(
          firstDay: kFirstDay,
          lastDay: kLastDay,
          focusedDay: _focusedDay,
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          locale: 'ko_KR',
          eventLoader: _getEventsForDay,
          startingDayOfWeek: StartingDayOfWeek.sunday,
          calendarStyle: CalendarStyle(
            markerSize: 15,
          markerDecoration: BoxDecoration(
            color:Colors.green,
            shape: BoxShape.circle
          ),
            todayDecoration: BoxDecoration(
              color: Colors.redAccent,
              shape : BoxShape.circle,
            ),
            selectedDecoration: BoxDecoration(
              color: color2,
              shape : BoxShape.circle,
            ),
            outsideDaysVisible: true,

          ),
          onDaySelected: _onDaySelected,
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              setState(() {
                _calendarFormat = format;
              });
            }
          },
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
        ),
        const SizedBox(height: 8.0),
        Expanded(
          child: ValueListenableBuilder<List<Event>>(
            valueListenable: _selectedEvents,
            builder: (context, value, _) {
              return ListView.builder(
                itemCount: value.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 4.0,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color:color2,width: 3),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: ListTile(
                      onTap: () => print('${value[index]}'),
                      title: Text('${value[index]}'),
                    ),
                  );
                },
              );
            },
          ),
        ),
        Row(children: [
          SizedBox(width:150),
        Container(height:50,width:100,
        child:TextField(controller: timeController)),
        SizedBox(width:10),
        FloatingActionButton
          (backgroundColor: color2,
            heroTag: "btn1",
            child:Icon(CupertinoIcons.plus),
            onPressed:(){
            setState((){
              CareEvents.addAll({_selectedDay:[Event('정기 케어 상담, ${timeController.text}')]});
              _CareCalendarState();

            });

            }),SizedBox(width: 10),
          FloatingActionButton
            (backgroundColor: color2,heroTag: "btn2",
              child:Icon(CupertinoIcons.minus),
              onPressed:(){
                setState((){
                  CareEvents.removeWhere((key, value) => key==_selectedDay);
                  _CareCalendarState();

                });
              }),
        ]),
        SizedBox( height:30)
      ],

    );

  }
}


