import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // 背景色
      appBar: AppBar(
        title: Text("しあわせ貯金"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.lightBlue, // アプリバーの背景色
      ),
      body: Center(
        child: Text(
          "カレンダー TEST",
          style: TextStyle(color: Colors.grey[800], fontSize: 13),
        ),
      ),
      // 下部ナビゲーションバーでスクロール
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0, // 現在選択しているアイコンの色をハイライト表示
        items: [
          // BottomNavigationBarItemに表示するリスト
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("ホーム"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.create),
            title: Text("入力"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text("カレンダー"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("設定"),
          ),
        ],
        // ナビゲーションバーのアイコンをタップしたときの処理
        onTap: (int index) {
          print(index); // デバッグ用に出力（タップされたボタンによって数値がかわる）
          if (index == 0) {
            // First Icon が押されたときは前の画面に戻る
            // Navigator.of(context).pop();
            Navigator.of(context).pushNamed("/home");
          } else if (index == 1) {
            Navigator.of(context).pushNamed("/create");
          } else if (index == 2) {
            Navigator.of(context).pushNamed("/calendar");
          } else if (index == 3) {
            Navigator.of(context).pushNamed("/setting");
          }
        },
      ),
      // // 下部ナビゲーションバーのスタイル指定
      // bottomNavigationBar: new Theme(
      //   data: Theme.of(context).copyWith(
      //       // 下部ナビゲーションバーの背景色
      //       canvasColor: Colors.grey[100],
      //       // 下部ナビゲーションバーのアイコンの色設定
      //       primaryColor: Colors.blue, // アイコンの色をハイライト表示
      //       textTheme: Theme.of(context)
      //           .textTheme
      //           // 未選択のアイコンの色
      //           .copyWith(caption: new TextStyle(color: Colors.grey))),
      //   // 下部ナビゲーションバーでスクロール
      //   child: new BottomNavigationBar(
      //     type: BottomNavigationBarType.fixed,
      //     currentIndex: 0, // 現在選択しているアイコンの色をハイライト表示
      //     items: [
      //       // BottomNavigationBarItemに表示するリスト
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         title: Text("ホーム"),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.create),
      //         title: Text("入力"),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.calendar_today),
      //         title: Text("カレンダー"),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.settings),
      //         title: Text("設定"),
      //       ),
      //     ],
      //     onTap: (int index) {
      //       print(index); // デバッグ用に出力（タップされたボタンによって数値がかわる）
      //       if (index == 0) {
      //         // First Icon が押されたときは前の画面に戻る
      //         // Navigator.of(context).pop();
      //         Navigator.of(context).pushNamed("/home");
      //       } else if (index == 1) {
      //         Navigator.of(context).pushNamed("/create");
      //       } else if (index == 2) {
      //         Navigator.of(context).pushNamed("/calendar");
      //       } else if (index == 3) {
      //         Navigator.of(context).pushNamed("/setting");
      //       }
      //     },
      //   ),
      // ),

      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     // BottomNavigationBarItemに表示するリスト
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text("ホーム"),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.create),
      //       title: Text("入力"),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.calendar_today),
      //       title: Text("カレンダー"),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       title: Text("設定"),
      //     ),
      //   ],
      //   // ナビゲーションバーのアイコンをタップしたときの処理
      //   onTap: (int index) {
      //     print(index); // デバッグ用に出力（タップされたボタンによって数値がかわる）
      //     if (index == 0) {
      //       // First Icon が押されたときは前の画面に戻る
      //       // Navigator.of(context).pop();
      //       Navigator.of(context).pushNamed("/home");
      //     } else if (index == 1) {
      //       Navigator.of(context).pushNamed("/create");
      //     } else if (index == 2) {
      //       Navigator.of(context).pushNamed("/calendar");
      //     } else if (index == 3) {
      //       Navigator.of(context).pushNamed("/setting");
      //     }
      //     // print(index); // デバッグ用に出力（タップされたボタンによって数値がかわる）
      //     // if (index == 0) {
      //     //   Navigator.of(context).pushNamed("/create");
      //     // } else if (index == 1) {
      //     //   Navigator.of(context).pushNamed("/calendar");
      //     // } else if (index == 2) {
      //     //   Navigator.of(context).pushNamed("/setting");
      //     // }
      //     // setState(
      //     //   () {
      //     //     // _navIndex = index;
      //     //     // _label = _titles[index];
      //     //     print(index); // デバッグ用に出力（タップされたボタンによって数値がかわる）
      //     //     if (index == 0) {
      //     //       Navigator.of(context).pushNamed("/create");
      //     //     } else if (index == 1) {
      //     //       Navigator.of(context).pushNamed("/calendar");
      //     //     } else if (index == 2) {
      //     //       Navigator.of(context).pushNamed("/setting");
      //     //     }
      //     //   },
      //     // );
      //   },
      //   // currentIndex: _navIndex,
      // ),
      // body: Column(
      //   children: <Widget>[
      //     Expanded(
      //       child: Center(
      //         child: Text(
      //           _label,
      //           style: TextStyle(fontSize: 24.0),
      //         ),
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   // var _navIndex = 0;
//   // var _label = '';
//   // var _titles = ["入力", "カレンダー", "設定"];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200], // 背景色
//       appBar: AppBar(
//         title: Text("しあわせ貯金"),
//         centerTitle: true,
//         elevation: 0,
//         backgroundColor: Colors.lightBlue, // アプリバーの背景色
//       ),
//       body: Center(
//         child: Text(
//           "カレンダーの入力数に連動した数、貯金箱にしあわせのイラストをアニメーションで追加していく",
//           style: TextStyle(color: Colors.grey[800], fontSize: 13),
//         ),
//       ),
//       // 下部ナビゲーションバーのスタイル指定
//       bottomNavigationBar: new Theme(
//         data: Theme.of(context).copyWith(
//             // 下部ナビゲーションバーの背景色
//             canvasColor: Colors.grey[100],
//             // 下部ナビゲーションバーのアイコンの色設定
//             primaryColor: Colors.blue, // アイコンの色をハイライト表示
//             textTheme: Theme.of(context)
//                 .textTheme
//                 // 未選択のアイコンの色
//                 .copyWith(caption: new TextStyle(color: Colors.grey))),
//         // 下部ナビゲーションバーでスクロール
//         child: new BottomNavigationBar(
//             type: BottomNavigationBarType.fixed,
//             currentIndex: 0, // 現在選択しているアイコンの色をハイライト表示
//             items: [
//               // BottomNavigationBarItemに表示するリスト
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 title: Text("ホーム"),
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.create),
//                 title: Text("入力"),
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.calendar_today),
//                 title: Text("カレンダー"),
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.settings),
//                 title: Text("設定"),
//               ),
//             ],
//             onTap: (int index) {
//               print(index); // デバッグ用に出力（タップされたボタンによって数値がかわる）
//               if (index == 0) {
//                 // First Icon が押されたときは前の画面に戻る
//                 // Navigator.of(context).pop();
//                 Navigator.of(context).pushNamed("/home");
//               } else if (index == 1) {
//                 Navigator.of(context).pushNamed("/create");
//               } else if (index == 2) {
//                 Navigator.of(context).pushNamed("/calendar");
//               } else if (index == 3) {
//                 Navigator.of(context).pushNamed("/setting");
//               }
//             }),
//       ),
// // 下部ナビゲーションバーでスクロール
// bottomNavigationBar: BottomNavigationBar(
//   items: [
//     // BottomNavigationBarItemに表示するリスト
//     BottomNavigationBarItem(
//       icon: Icon(Icons.create),
//       title: Text("入力"),
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.calendar_today),
//       title: Text("カレンダー"),
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.settings),
//       title: Text("設定"),
//     ),
//   ],
//   // ナビゲーションバーのアイコンを��ップしたときの処理
//   onTap: (int index) {
//     setState(
//       () {
//         // _navIndex = index;
//         // _label = _titles[index];
//         print(index); // デバッグ用に出力（タップされたボタンによって数値がかわる）
//         if (index == 0) {
//           Navigator.of(context).pushNamed("/create");
//         } else if (index == 1) {
//           Navigator.of(context).pushNamed("/calendar");
//         } else if (index == 2) {
//           Navigator.of(context).pushNamed("/setting");
//         }
//       },
//     );
//   },
//   // currentIndex: _navIndex,
// ),
// body: Column(
//   children: <Widget>[
//     Expanded(
//       child: Center(
//         child: Text(
//           _label,
//           style: TextStyle(fontSize: 24.0),
//         ),
//       ),
//     )
//   ],
// ),
//     );
//   }
// }