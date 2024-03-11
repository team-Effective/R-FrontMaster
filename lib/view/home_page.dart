import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(67, 67, 67, 1),
      body: Column(
        children: [
          Expanded(
            //アプリロゴ
            flex: 1,
            child: Container(
              padding: const EdgeInsets.fromLTRB(64, 56, 64, 24),
              child: Image.asset(
                'assets/images/app_logo.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            //メイン機能
            flex: 6,
            child: Container(
              padding: const EdgeInsets.fromLTRB(48, 0, 48, 48),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/game/create');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: const Color.fromRGBO(67, 67, 67, 1),
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(91, 91, 91, 1), //色
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(-4, -4),
                      ),
                      BoxShadow(
                        color: Color.fromRGBO(43, 43, 43, 1), //色
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Image.asset('assets/images/create_game_link.png'),
                ),
              ),
            ),
          ),
          Expanded(
            // ボトムナビゲーション
            flex: 1,
            child: Container(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment(0, -0.8),
                      colors: [
                        Color.fromRGBO(67, 67, 67, 1),
                        Color.fromRGBO(80, 80, 80, 1)
                      ]),
                  border: Border(
                      top: BorderSide(
                    color: Color.fromRGBO(60, 60, 60, 1),
                    width: 2,
                  ))),
              child: Container(
                padding: const EdgeInsets.fromLTRB(48, 16, 48, 16),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(80, 80, 80, 1),
                    border: Border(
                        top: BorderSide(
                      color: Color.fromRGBO(72, 72, 72, 1),
                      width: 2,
                    ))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          '/playablePlayer/list',
                          (route) => false,
                        );
                      },
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          height: 64,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(80, 80, 80, 1),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(104, 104, 104, 1), //色
                                  spreadRadius: 0,
                                  blurRadius: 2,
                                  offset: Offset(-2, -2),
                                ),
                                BoxShadow(
                                  color: Color.fromRGBO(56, 56, 56, 1), //色
                                  spreadRadius: 0,
                                  blurRadius: 2,
                                  offset: Offset(2, 2),
                                ),
                              ]),
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 40,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        height: 64,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(80, 80, 80, 1),
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(104, 104, 104, 1), //色
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: Offset(-2, -2),
                              ),
                              BoxShadow(
                                color: Color.fromRGBO(56, 56, 56, 1), //色
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: Offset(2, 2),
                              ),
                            ]),
                        child: const Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 40,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        height: 64,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(80, 80, 80, 1),
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(104, 104, 104, 1), //色
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: Offset(-2, -2),
                              ),
                              BoxShadow(
                                color: Color.fromRGBO(56, 56, 56, 1), //色
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: Offset(2, 2),
                              ),
                            ]),
                        child: const Icon(
                          Icons.list,
                          color: Colors.white,
                          size: 40,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
