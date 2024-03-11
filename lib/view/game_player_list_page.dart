import 'package:flutter/material.dart';

class GamePlayerListPage extends StatelessWidget {
  const GamePlayerListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> strList = [
      'テスト1',
      'テスト2',
      'テスト3',
      'テスト4',
      'テスト5',
      'テスト6',
      'テスト7',
      'テスト8',
      'テスト9',
      'テスト10',
      'テスト11',
      'テスト12',
      'テスト13',
      'テスト14',
      'テスト15',
      'テスト16',
      'テスト17',
      'テスト18',
      'テスト19',
      'テスト20',
    ];
    ScrollController gamePlayerController = ScrollController();

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
              child: Column(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(48, 0, 48, 0),
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
                      child: Column(
                        children: [
                          const Expanded(
                            flex: 1,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.sports_esports,
                                    size: 32,
                                    color: Color.fromRGBO(17, 241, 255, 1),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Game Player",
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: Color.fromRGBO(17, 241, 255, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 9,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromRGBO(
                                            17, 241, 255, 1),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: RawScrollbar(
                                      thumbColor: Colors.white,
                                      thickness: 4,
                                      controller: gamePlayerController,
                                      thumbVisibility: true,
                                      child: SingleChildScrollView(
                                        controller: gamePlayerController,
                                        child: Column(
                                          children: strList
                                              .map(
                                                (str) => Container(
                                                  width: double.infinity,
                                                  margin:
                                                      const EdgeInsets.fromLTRB(
                                                          24, 12, 24, 12),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        str,
                                                        style: const TextStyle(
                                                          fontSize: 24,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Icon(
                                                            true
                                                                ? Icons.favorite
                                                                : Icons
                                                                    .heart_broken,
                                                            size: 24,
                                                            color: true
                                                                ? Color
                                                                    .fromRGBO(
                                                                        17,
                                                                        241,
                                                                        255,
                                                                        1)
                                                                : Colors.grey,
                                                          ),
                                                          const SizedBox(
                                                            width: 24,
                                                          ),
                                                          OutlinedButton.icon(
                                                            onPressed: () {},
                                                            style:
                                                                OutlinedButton
                                                                    .styleFrom(
                                                              side: const BorderSide(
                                                                  color: Colors
                                                                      .yellow),
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8),
                                                            ),
                                                            icon: const Icon(
                                                              Icons.bolt,
                                                              size: 16,
                                                              color:
                                                                  Colors.yellow,
                                                            ),
                                                            label: const Text(
                                                              "Execute",
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                color: Colors
                                                                    .yellow,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                              .toList(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                      child: OutlinedButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamedAndRemoveUntil(
                                            '/game/home',
                                            (route) => false,
                                          );
                                        },
                                        style: OutlinedButton.styleFrom(
                                          side: const BorderSide(
                                            color:
                                                Color.fromRGBO(17, 241, 255, 1),
                                          ),
                                          padding: const EdgeInsets.fromLTRB(
                                              32, 16, 32, 16),
                                        ),
                                        child: const Text(
                                          "Edit",
                                          style: TextStyle(
                                            fontSize: 24,
                                            color:
                                                Color.fromRGBO(17, 241, 255, 1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
                          Icons.contacts,
                          color: Colors.white,
                          size: 40,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          '/game/home',
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
                            Icons.home,
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
                          Icons.subject,
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
