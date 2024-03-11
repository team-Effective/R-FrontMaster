import 'package:flutter/material.dart';

class EditGamePlayerListPage extends StatelessWidget {
  const EditGamePlayerListPage({super.key});

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

    ScrollController playablePlayerController = ScrollController();
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
              flex: 6,
              child: Container(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Column(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                const Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: Text(
                                      "PlayablePlayer",
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
                                        color: const Color.fromRGBO(
                                            17, 241, 255, 1),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: RawScrollbar(
                                      thumbColor: Colors.white,
                                      thickness: 4,
                                      thumbVisibility: true,
                                      controller: playablePlayerController,
                                      child: SingleChildScrollView(
                                        controller: playablePlayerController,
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
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            color: Colors
                                                                .lightGreen, //枠線の色
                                                            width: 1, //枠線の太さ
                                                          ),
                                                        ),
                                                        child: IconButton(
                                                          onPressed: () {},
                                                          padding:
                                                              EdgeInsets.zero,
                                                          constraints:
                                                              const BoxConstraints(),
                                                          icon: const Icon(
                                                            Icons.add,
                                                            size: 16,
                                                            color: Colors
                                                                .lightGreen,
                                                          ),
                                                        ),
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
                              ],
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
                                      "GamePlayer",
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
                                        color: const Color.fromRGBO(
                                            17, 241, 255, 1),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: RawScrollbar(
                                      thumbColor: Colors.white,
                                      thickness: 4,
                                      thumbVisibility: true,
                                      controller: playablePlayerController,
                                      child: SingleChildScrollView(
                                        controller: playablePlayerController,
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
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            color: Colors
                                                                .red, //枠線の色
                                                            width: 1, //枠線の太さ
                                                          ),
                                                        ),
                                                        child: IconButton(
                                                          onPressed: () {},
                                                          padding:
                                                              EdgeInsets.zero,
                                                          constraints:
                                                              const BoxConstraints(),
                                                          icon: const Icon(
                                                            Icons.remove,
                                                            size: 16,
                                                            color: Colors.red,
                                                          ),
                                                        ),
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Color.fromRGBO(17, 241, 255, 1),
                    ),
                    padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                  ),
                  child: const Text(
                    "Edit",
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromRGBO(17, 241, 255, 1),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
