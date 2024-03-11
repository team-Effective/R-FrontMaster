import 'package:flutter/material.dart';

class CreateGamePage extends StatelessWidget {
  const CreateGamePage({super.key});

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
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                        alignment: Alignment.center,
                        child: const TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            label: Text(
                              'GameName',
                              style: TextStyle(
                                color: Color.fromRGBO(17, 241, 255, 1),
                              ),
                            ),
                            hintText: 'ゲーム名を入力してください',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(17, 239, 255, 0.5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(17, 241, 255, 1),
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(17, 241, 255, 1),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
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
                                                  margin:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 0, 0, 16),
                                                  alignment: Alignment.center,
                                                  child: Theme(
                                                    data: ThemeData(
                                                      unselectedWidgetColor:
                                                          const Color.fromRGBO(
                                                              17, 241, 255, 1),
                                                    ),
                                                    child: CheckboxListTile(
                                                      title: Text(
                                                        str,
                                                        style: const TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      activeColor:
                                                          const Color.fromRGBO(
                                                              17, 241, 255, 1),
                                                      value: false,
                                                      onChanged: (e) => {},
                                                    ),
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
                          const Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 40,
                                    color: Color.fromRGBO(17, 241, 255, 1),
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  Icon(
                                    Icons.arrow_back,
                                    size: 40,
                                    color: Color.fromRGBO(17, 241, 255, 1),
                                  ),
                                ],
                              )),
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
                                                          0, 0, 0, 16),
                                                  alignment: Alignment.center,
                                                  child: Theme(
                                                    data: ThemeData(
                                                      unselectedWidgetColor:
                                                          const Color.fromRGBO(
                                                              17, 241, 255, 1),
                                                    ),
                                                    child: CheckboxListTile(
                                                      title: Text(
                                                        str,
                                                        style: const TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      activeColor:
                                                          const Color.fromRGBO(
                                                              17, 241, 255, 1),
                                                      value: false,
                                                      onChanged: (e) => {},
                                                    ),
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
