import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 32, 0, 32),
                child: InkWell(
                  onTap: () {
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
