import 'package:flutter/material.dart';

class PlayablePlayerListPage extends StatelessWidget {
  const PlayablePlayerListPage({super.key});

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
                              Icons.person,
                              size: 32,
                              color: Color.fromRGBO(17, 241, 255, 1),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Playable Player",
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
                            flex: 1,
                            child: Row(
                              children: [
                                const Flexible(
                                  child: TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      label: Text(
                                        'Player ID',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(17, 241, 255, 1),
                                        ),
                                      ),
                                      hintText: 'プレイヤーIDを入力してください',
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
                                const SizedBox(
                                  width: 8,
                                ),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                      color: Color.fromRGBO(17, 241, 255, 1),
                                    ),
                                    padding: const EdgeInsets.fromLTRB(
                                        32, 16, 32, 16),
                                  ),
                                  child: const Text(
                                    "Add",
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromRGBO(17, 241, 255, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 48),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromRGBO(17, 241, 255, 1),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: RawScrollbar(
                                thumbColor: Colors.white,
                                thickness: 4,
                                controller: playablePlayerController,
                                thumbVisibility: true,
                                child: SingleChildScrollView(
                                  controller: playablePlayerController,
                                  child: Column(
                                    children: strList
                                        .map(
                                          (str) => Container(
                                            width: double.infinity,
                                            margin: const EdgeInsets.fromLTRB(
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
                          Icons.settings,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          '/home',
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
                          Icons.groups,
                          color: Colors.white,
                          size: 40,
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
