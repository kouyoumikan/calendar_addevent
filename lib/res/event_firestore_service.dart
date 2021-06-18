import 'package:firebase_helpers/firebase_helpers.dart';
import '../model/event.dart';

/* カレンダーイベントファイルの復元サービスの作成 */

// データベースサービスを初期化して、イベントを保存する
DatabaseService<EventModel> eventDBS =
DatabaseService<EventModel>("events",fromDS: (id,data) =>
    EventModel.fromDS(id, data), toMap:(event) => event.toMap());
