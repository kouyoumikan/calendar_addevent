import 'package:flutter/material.dart';

import 'package:calendar_addevent/pages/home.dart';
import 'package:calendar_addevent/pages/calendar.dart';
import 'package:calendar_addevent/pages/add_event.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
//  runApp(MyApp());
  initializeDateFormatting().then((_) =>runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      // デフォルトのルーティング
      //home: HomePage(), // initialRouteと同じ
      initialRoute: '/home', // アプリを開いた時にロードする最初のルート
      // ルーティングの一覧を設定
      routes: {
        //'/': (context) => MainPage(), // ホーム画面
        '/home': (context) => Home(), // ホーム画面
        '/calendar': (context) => Calendar(), // カレンダー画面
        //'/add_event': (context) => AddEvent(), // カレンダー入力画面
      },
    );
  }
}
