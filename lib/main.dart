import 'package:dg_master/controller/counter_controller.dart';
import 'package:dg_master/model/counter.dart';
import 'package:dg_master/view/counter_page.dart';
import 'package:dg_master/view/game_create_page.dart';
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
        initialRoute: '/gameCreate',
        routes: {
          '/': (context) => const HomePage(),
          '/gameCreate': (context) => const GameCreatePage(),
          '/test': (context) => const CounterPage(),
        },
      ),
    );
  }
}
