import 'package:flutter/material.dart';

class CreateMissionPage extends StatelessWidget {
  const CreateMissionPage({super.key});

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        color: Color.fromRGBO(17, 241, 255, 1),
                                        width: 8,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    'ミッションタイトル',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 0, 40, 0),
                                  alignment: Alignment.center,
                                  child: const TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: 'ミッションタイトルを入力してください',
                                      hintStyle: TextStyle(
                                        color:
                                            Color.fromRGBO(17, 239, 255, 0.5),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(17, 241, 255, 1),
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(17, 241, 255, 1),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        color: Color.fromRGBO(17, 241, 255, 1),
                                        width: 8,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '達成条件',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 0, 40, 0),
                                  child: const TextField(
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 3,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: '達成条件を入力してください',
                                      contentPadding: EdgeInsets.all(8),
                                      hintStyle: TextStyle(
                                        color:
                                            Color.fromRGBO(17, 239, 255, 0.5),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(17, 241, 255, 1),
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(17, 241, 255, 1),
                                          width: 1,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                          width: 1,
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
                    Expanded(
                      flex: 5,
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
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      '/game/home',
                      (route) => false,
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Color.fromRGBO(17, 241, 255, 1),
                    ),
                    padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                  ),
                  child: const Text(
                    "Create",
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
