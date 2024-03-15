import 'package:dg_master/controller/counter_controller.dart';
import 'package:dg_master/logic/connect_websocket.dart';
import 'package:dg_master/logic/counter.dart';
import 'package:dg_master/view/counter_page.dart';
import 'package:dg_master/view/game/create_game_page.dart';
import 'package:dg_master/view/game/create_mission_page.dart';
import 'package:dg_master/view/game/edit_game_player_list_page.dart';
import 'package:dg_master/view/game/game_home_page.dart';
import 'package:dg_master/view/game/game_player_list_page.dart';
import 'package:dg_master/view/game/mission_details_page.dart';
import 'package:dg_master/view/game/mission_list_page.dart';
import 'package:dg_master/view/home_page.dart';
import 'package:dg_master/view/login_page.dart';
import 'package:dg_master/view/playable_player_list_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => WebSocketProvider()
        ),
        ChangeNotifierProvider<Counter>(
          create: (context) => Counter(),
        ),
        ProxyProvider<Counter, CounterController>(
          update: (_, counter, __) => CounterController(counter),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
        routes: {
          '/login': (context) => const LoginPage(),
          '/home': (context) => const HomePage(),
          '/playablePlayer/list': (context) => const PlayablePlayerListPage(),
          '/game/create': (context) => const CreateGamePage(),
          '/game/home': (context) => const GameHomePage(),
          '/game/gamePlayer/list': (context) => const GamePlayerListPage(),
          '/game/gamePlayer/list/edit': (context) =>
              const EditGamePlayerListPage(),
          '/game/mission/list': (context) => const MissionListPage(),
          '/game/mission/details': (context) => const MissionDetailsPage(),
          '/game/mission/create': (context) => const CreateMissionPage(),
          '/test': (context) => const CounterPage(),
        },
      ),
    );
  }
}
