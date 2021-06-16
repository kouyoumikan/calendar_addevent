import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

import 'event.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  TextEditingController _eventController = TextEditingController();

  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase starter'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () => Navigator.pushNamed(context, "/home"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
              locale: 'ja_JP', // カレンダーの言語を日本語で設定
              focusedDay: selectedDay,
              firstDay: DateTime(1990),
              lastDay: DateTime(2050),
              calendarFormat: format,
              // フォーマット変更のボタン押下時の処理
              onFormatChanged: (CalendarFormat _format) {
                setState(() {
                  format = _format;
                });
              },
              startingDayOfWeek: StartingDayOfWeek.sunday,
              daysOfWeekVisible: true,

              //Day Changed
              onDaySelected: (DateTime selectDay, DateTime focusDay) {
                setState(() {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                });
                print(focusedDay);
              },
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },

              eventLoader: _getEventsfromDay,

              //To style the Calendar
              calendarStyle: CalendarStyle(
                isTodayHighlighted: true,
                selectedDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                selectedTextStyle: TextStyle(color: Colors.white),
                todayDecoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                defaultDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                weekendDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
//                headerStyle: HeaderStyle(
//                  formatButtonVisible: false
//                ),
              ),
              // カレンダーのイベント数を数字で表示するようにカスタマイズ
              calendarBuilders: CalendarBuilders(
                markerBuilder: (context, date, events) {
                  if (events.isNotEmpty) {
                    return _buildEventsMarker(date, events);
                  }
                },
              ),
            ),
//            headerStyle: HeaderStyle(
//              formatButtonVisible: true,
//              titleCentered: true,
//              formatButtonShowsNext: false,
//              formatButtonDecoration: BoxDecoration(
//                color: Colors.blue,
//                borderRadius: BorderRadius.circular(5.0),
//              ),
//              formatButtonTextStyle: TextStyle(
//                color: Colors.white,
//              ),
//            ),
//            ..._getEventsfromDay(selectedDay).map(
//              (Event event) => ListTile(
//            title: Text(
//              event.title,
//            ),
//          ),
//        ),
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton.extended(
//        onPressed: () => showDialog(
//        context: context,
//        builder: (context) => AlertDialog(
//          title: Text("Add Event"),
//          content: TextFormField(
//            controller: _eventController,
//          ),
//        ),
//      ),
//      actions: [
//        TextButton(
//          child: Text("Cancel"),
//          onPressed: () => Navigator.pop(context),
//        ),
//        TextButton(
//          child: Text("Ok"),
//          onPressed: () {
//          if (_eventController.text.isEmpty) {
//
//          } else {
//            if (selectedEvents[selectedDay] != null) {
//              selectedEvents[selectedDay].add(
//              Event(title: _eventController.text),
//            );
//            } else {
//              selectedEvents[selectedDay] = [
//              Event(title: _eventController.text)
//            ];
//            }
//
//          }
//          Navigator.pop(context);
//          _eventController.clear();
//          setState((){});
//          return;
//        },
//      ),
//    ],
//    ),
    );
  }
}

// カレンダーのイベント数を赤丸の数字で表示
Widget _buildEventsMarker(DateTime date, List events) {
  return Positioned(
    right: 5,
    bottom: 5,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red[300],
      ),
      width: 16.0,
      height: 16.0,
      child: Center(
        child: Text(
          '${events.length}',
          style: TextStyle().copyWith(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
    ),
  );
}