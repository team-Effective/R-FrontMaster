import 'dart:convert';
import 'package:http/http.dart' as http;

class NotifyPlayer {
    //プレイヤーにゲームの終了を通知する
    void GameClear(String hostId) async{
    await http.post(
      Uri.parse("http://IP:PORT/game_clear/$hostId"), 
      headers: {'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*'},     
    );
  }

  //プレイヤーにミッションの作成を通知する
  void MissionCreation(String hostId , List<String> send_player_id) async{

    List<String> send_player_id = ['cb4686cd-da96-41c7-88b5-d25f592fbc0f','129d2134-1adc-40c0-98e8-6d28f7852462'];

    final send_player_id_json = jsonEncode(send_player_id);

    await http.post(
      Uri.parse("http://IP:PORT/create_mission/$hostId"), 
      headers: {'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*'}, 
      body: send_player_id_json    
    );
  }

  //プレイヤーにミッションの終了を通知する
  void MissionFinish(String hostId) async{
    await http.post(
      Uri.parse("http://IP:PORT/mission_end/$hostId"), 
      headers: {'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*'},     
    );
  }

  //プレイヤーにミッションの判定を通知する
  void MissionResult(String hostId , bool flag) async{
    String send_player_id = "cb4686cd-da96-41c7-88b5-d25f592fbc0f";

    await http.post(
      Uri.parse("http://IP:PORT/mission_flag/$hostId?send_player_id=$send_player_id&flag=$flag"), 
      headers: {'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*'},     
    );
  }
}