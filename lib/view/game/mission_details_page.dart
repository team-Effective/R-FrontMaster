import 'package:flutter/material.dart';

class MissionDetailsPage extends StatelessWidget {
  const MissionDetailsPage({super.key});

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
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            //アプリロゴ
            flex: 1,
            child: Container(
              padding: const EdgeInsets.fromLTRB(0, 56, 0, 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Color.fromRGBO(17, 241, 255, 1),
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Image.asset(
                    'assets/images/create_game_logo.png',
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    width: 40,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            //メイン
            flex: 7,
            child: Container(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Column(
                children: [
                  const Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          'あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Expanded(
                                  flex: 1,
                                  child: SizedBox(),
                                ),
                                Expanded(
                                  flex: 12,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 0, 0, 0),
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            left: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 241, 255, 1),
                                              width: 8,
                                            ),
                                          ),
                                        ),
                                        child: const Text(
                                          '達成条件',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 32,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(24, 0, 0, 0),
                                        child: const Text(
                                          'じゃんけんで３回勝利せよじゃんけんで３回勝利せよじゃんけんで３回勝利せよじゃんけんで３回勝利せよじゃんけんで３回勝利せよじゃんけんで３回勝利せよ',
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              const Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    "MissionPlayer",
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromRGBO(17, 241, 255, 1),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 12,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color:
                                          const Color.fromRGBO(17, 241, 255, 1),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: RawScrollbar(
                                    thumbColor: Colors.white,
                                    thickness: 4,
                                    thumbVisibility: true,
                                    controller: gamePlayerController,
                                    child: SingleChildScrollView(
                                      controller: gamePlayerController,
                                      child: Column(
                                        children: strList
                                            .map(
                                              (str) => Container(
                                                width: double.infinity,
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        24, 16, 24, 16),
                                                alignment: Alignment.center,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      str,
                                                      style: const TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.favorite,
                                                          size: 24,
                                                          color: Colors.pink,
                                                        ),
                                                        const SizedBox(
                                                          width: 16,
                                                        ),
                                                        OutlinedButton.icon(
                                                          onPressed: () {},
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                            side:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .red),
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8),
                                                          ),
                                                          icon: const Icon(
                                                            Icons.close,
                                                            size: 16,
                                                            color: Colors.red,
                                                          ),
                                                          label: const Text(
                                                            "Failure",
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              color: Colors.red,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 16,
                                                        ),
                                                        OutlinedButton.icon(
                                                          onPressed: () {},
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                            side: const BorderSide(
                                                                color: Colors
                                                                    .lightGreen),
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8),
                                                          ),
                                                          icon: const Icon(
                                                            Icons.done,
                                                            size: 16,
                                                            color: Colors
                                                                .lightGreen,
                                                          ),
                                                          label: const Text(
                                                            "Complete",
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              color: Colors
                                                                  .lightGreen,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
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
                            ],
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
    );
  }
}
