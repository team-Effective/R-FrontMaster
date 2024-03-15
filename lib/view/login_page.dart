import 'package:dg_master/logic/shared_preferences_logic.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'dart:convert';
import 'package:dg_master/provider/test_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget  {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  late String _host_id;

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final TestProvider testProvider = Provider.of<TestProvider>(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(67, 67, 67, 1),
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(56, 0, 56, 0),
          margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(67, 67, 67, 1),
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(91, 91, 91, 1), //色
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(-2, -2),
              ),
              BoxShadow(
                color: Color.fromRGBO(43, 43, 43, 1), //色
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(2, 2),
              ),
            ],
          ),
          constraints: const BoxConstraints(
            minHeight: 0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 32, 0, 80),
                child: Image.asset(
                  'assets/images/app_title.png',
                ),
              ),
              const Column(
                children: [
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      labelText: 'ID',
                      hintText: 'ユーザーIDを入力してください',
                      contentPadding: EdgeInsets.all(8),
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
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
                  SizedBox(
                    height: 24,
                  ),
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'パスワードを入力してください',
                      contentPadding: EdgeInsets.all(8),
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
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
                  // Consumer<TestProvider>(builder: (context, test, child) {
                  //   return Text(test.test?.code.toString() ?? '777');
                  // }),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 32, 0, 32),
                child: InkWell(
                  onTap: () {
                    _host_id = const Uuid().v4(); // UUID を生成
                    print(_host_id);
                    //host_id を保存
                    SharedPreferencesLogic().saveHostID(_host_id);
                    // testProvider.setTest();
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      '/home',
                      (route) => false,
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(67, 67, 67, 1),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(91, 91, 91, 1), //色
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(-2, -2),
                        ),
                        BoxShadow(
                          color: Color.fromRGBO(43, 43, 43, 1), //色
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    constraints: const BoxConstraints(minHeight: 0),
                    child: const Text(
                      'ログイン',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> fetchTest() async {
    print('stert');
    try {
      const url =
          'https://0733cbb1-b839-4f2b-8e1a-b9da5f657f21.mock.pstmn.io/Player';
      final uri = Uri.parse(url);
      final respose = await http.get(uri);
      final body = respose.body;
      final json = jsonDecode(body);
      print(json);
      print('end');
    } catch (e) {
      print(e);
    }
  }
}

// Center(
//         child: Container(
//           constraints: const BoxConstraints(
//             minHeight: 0,
//           ),
//           decoration: BoxDecoration(
//             color: const Color.fromRGBO(67, 67, 67, 1),
//             borderRadius: BorderRadius.circular(16),
//             boxShadow: const [
//               BoxShadow(
//                 color: Color.fromRGBO(91, 91, 91, 1), //色
//                 spreadRadius: 1,
//                 blurRadius: 1,
//                 offset: Offset(-2, -2),
//               ),
//               BoxShadow(
//                 color: Color.fromRGBO(43, 43, 43, 1), //色
//                 spreadRadius: 1,
//                 blurRadius: 1,
//                 offset: Offset(2, 2),
//               ),
//             ],
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Expanded(
//                 flex: 1,
//                 child: Image.asset(
//                   'assets/images/app_title.png',
//                 ),
//               ),
//               Expanded(
//                 flex: 3,
//                 child: Column(
//                   children: [
//                     Expanded(
//                       flex: 3,
//                       child: Container(
//                         margin: EdgeInsets.fromLTRB(48, 0, 48, 0),
//                         child: const Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
                            // TextField(
                            //   style: TextStyle(
                            //     color: Colors.white,
                            //     fontSize: 24,
                            //   ),
                            //   decoration: InputDecoration(
                            //     labelText: 'ID',
                            //     hintText: 'ユーザーIDを入力してください',
                            //     contentPadding: EdgeInsets.all(8),
                            //     labelStyle: TextStyle(
                            //       color: Colors.grey,
                            //     ),
                            //     hintStyle: TextStyle(
                            //       color: Colors.grey,
                            //     ),
                            //     enabledBorder: OutlineInputBorder(
                            //       borderSide: BorderSide(
                            //         color: Colors.grey,
                            //         width: 1,
                            //       ),
                            //     ),
                            //     focusedBorder: OutlineInputBorder(
                            //       borderSide: BorderSide(
                            //         color: Colors.grey,
                            //         width: 1,
                            //       ),
                            //     ),
                            //     errorBorder: OutlineInputBorder(
                            //       borderSide: BorderSide(
                            //         color: Colors.red,
                            //         width: 1,
                            //       ),
                            //     ),
                            //   ),
                            // ),
//                             SizedBox(
//                               height: 24,
//                             ),
//                             TextField(
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 24,
//                               ),
//                               decoration: InputDecoration(
//                                 labelText: 'Password',
//                                 hintText: 'パスワードを入力してください',
//                                 contentPadding: EdgeInsets.all(8),
//                                 labelStyle: TextStyle(
//                                   color: Colors.grey,
//                                 ),
//                                 hintStyle: TextStyle(
//                                   color: Colors.grey,
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Colors.grey,
//                                     width: 1,
//                                   ),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Colors.grey,
//                                     width: 1,
//                                   ),
//                                 ),
//                                 errorBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Colors.red,
//                                     width: 1,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       flex: 1,
//                       child: Center(
//                         child: InkWell(
//                           onTap: () {
//                             Navigator.of(context).pushNamedAndRemoveUntil(
//                               '/home',
//                               (route) => false,
//                             );
//                           },
//                           child: Container(
//                             padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
//                             decoration: BoxDecoration(
//                               color: const Color.fromRGBO(67, 67, 67, 1),
//                               borderRadius: BorderRadius.circular(8),
//                               boxShadow: const [
//                                 BoxShadow(
//                                   color: Color.fromRGBO(91, 91, 91, 1), //色
//                                   spreadRadius: 1,
//                                   blurRadius: 1,
//                                   offset: Offset(-2, -2),
//                                 ),
//                                 BoxShadow(
//                                   color: Color.fromRGBO(43, 43, 43, 1), //色
//                                   spreadRadius: 1,
//                                   blurRadius: 1,
//                                   offset: Offset(2, 2),
//                                 ),
//                               ],
//                             ),
//                             constraints: const BoxConstraints(minHeight: 0),
//                             child: const Text(
//                               'ログイン',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 24,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
