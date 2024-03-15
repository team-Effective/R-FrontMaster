import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesLogic {
  
  static const String keyHostID = 'userID';

  static const String keyGameID = 'gameID';

  static const String keyMissionID = 'missionID';

  //端末にuser_idを保存する
  Future<void> saveHostID(String userID) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(keyHostID, userID);
  }

  //端末からgame_idを取得する
  Future<void> saveGameID(String gameID) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(keyGameID, gameID);
  }

  //端末にmission_idを保存する
  Future<void> saveMissionID(String missionID) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(keyMissionID, missionID);
  }

  //端末からuser_idを取得する
  Future<String?> getHostID() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(keyHostID);
  }

  //端末からgame_idを取得する
  Future<String?> getGameID() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(keyGameID);
  }

  //端末からmission_idを取得する
  Future<String?> getMissionID() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(keyMissionID);
  }
}
