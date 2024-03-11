import 'package:dg_master/controller/counter_controller.dart';
import 'package:dg_master/model/counter.dart';
import 'package:dg_master/view/counter_page.dart';
import 'package:dg_master/view/game/create_game_page.dart';
import 'package:dg_master/view/game/edit_game_player_list_page.dart';
import 'package:dg_master/view/game/game_home_page.dart';
import 'package:dg_master/view/game/game_player_list_page.dart';
import 'package:dg_master/view/home_page.dart';
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
        ChangeNotifierProvider<Counter>(
          create: (context) => Counter(),
        ),
        ProxyProvider<Counter, CounterController>(
          update: (_, counter, __) => CounterController(counter),
        ),
      ],
      child: MaterialApp(
        initialRoute: '/home',
        routes: {
          '/home': (context) => const HomePage(),
          '/player/list'
          '/game/create': (context) => const CreateGamePage(),
          '/game/home': (context) => const GameHomePage(),
          '/game/gamePlayer/list': (context) => const GamePlayerListPage(),
          '/game/gamePlayer/list/edit': (context) => const EditGamePlayerListPage(),
          '/test': (context) => const CounterPage(),
        },
      ),
    );
  }
}
