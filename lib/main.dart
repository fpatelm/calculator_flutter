import 'dart:io';

import 'package:flutter/material.dart';
import 'package:window_utils/window_utils.dart';

import 'btn.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    WindowUtils.setSize(Size(320, 410));
    WindowUtils.hideTitleBar();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var result = "0";
  var clearResult = false;
  var operator = "";
  var firstOperand = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTapDown: (_) {
          WindowUtils.startDrag();
        },
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      width: 320,
                      height: 100,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      alignment: Alignment.centerRight,
                      color: Colors.black87,
                      child: Text(
                        result,
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontFamily: 'Arial'),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Button(
                      key: UniqueKey(),
                      text: "AC",
                      color: Colors.black87,
                      f: () {
                        setState(
                          () {
                            this.result = "0";
                          },
                        );
                      },
                    ),
                    Button(
                      key: UniqueKey(),
                      text: "+-",
                      color: Colors.black87,
                      f: () {
                        setState(
                          () {
                            if (result.length == 1 && result == "0") return;
                            if (result.length < 10) {
                              if (result.contains('-')) {
                                result = result.replaceAll("-", "");
                              } else {
                                result = "-$result";
                              }
                            }
                          },
                        );
                      },
                    ),
                    Button(
                      key: UniqueKey(),
                      text: "%",
                      color: Colors.black87,
                      f: () {
                        setState(
                          () {
                            result = (double.parse(result) / 100).toString();
                            clearResult = true;
                          },
                        );
                      },
                    ),
                    Button(
                      key: UniqueKey(),
                      text: "/",
                      color: Colors.orange,
                      f: () {
                        setState(
                          () {
                            operator = "/";
                            firstOperand = result;
                            result = "0";
                          },
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Button(
                      key: UniqueKey(),
                      text: "7",
                      color: Colors.black54,
                      f: () {
                        setState(
                          () {
                            if (clearResult) {
                              result = "0";
                              clearResult = false;
                            }
                            if (result.length == 1 && result == "0")
                              result = "";
                            if (result.length < 10) result += "7";
                          },
                        );
                      },
                    ),
                    Button(
                      key: UniqueKey(),
                      text: "8",
                      color: Colors.black54,
                      f: () {
                        setState(
                          () {
                            if (clearResult) {
                              result = "0";
                              clearResult = false;
                            }
                            if (result.length == 1 && result == "0")
                              result = "";
                            if (result.length < 10) result += "8";
                          },
                        );
                      },
                    ),
                    Button(
                      key: UniqueKey(),
                      text: "9",
                      color: Colors.black54,
                      f: () {
                        setState(
                          () {
                            if (clearResult) {
                              result = "0";
                              clearResult = false;
                            }
                            if (result.length == 1 && result == "0")
                              result = "";
                            if (result.length < 10) result += "9";
                          },
                        );
                      },
                    ),
                    Button(
                      key: UniqueKey(),
                      text: "x",
                      color: Colors.orange,
                      f: () {
                        setState(
                          () {
                            operator = "x";
                            firstOperand = result;
                            result = "0";
                          },
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Button(
                      key: UniqueKey(),
                      text: "4",
                      color: Colors.black54,
                      f: () {
                        setState(
                          () {
                            if (clearResult) {
                              result = "0";
                              clearResult = false;
                            }
                            if (result.length == 1 && result == "0")
                              result = "";
                            if (result.length < 10) result += "4";
                          },
                        );
                      },
                    ),
                    Button(
                      key: UniqueKey(),
                      text: "5",
                      color: Colors.black54,
                      f: () {
                        setState(
                          () {
                            if (clearResult) {
                              result = "0";
                              clearResult = false;
                            }
                            if (result.length == 1 && result == "0")
                              result = "";
                            if (result.length < 10) result += "5";
                          },
                        );
                      },
                    ),
                    Button(
                      key: UniqueKey(),
                      text: "6",
                      color: Colors.black54,
                      f: () {
                        setState(
                          () {
                            if (clearResult) {
                              result = "0";
                              clearResult = false;
                            }
                            if (result.length == 1 && result == "0")
                              result = "";
                            if (result.length < 10) result += "6";
                          },
                        );
                      },
                    ),
                    Button(
                      key: UniqueKey(),
                      text: "-",
                      color: Colors.orange,
                      f: () {
                        setState(
                          () {
                            operator = "-";
                            firstOperand = result;
                            result = "0";
                          },
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Button(
                      key: UniqueKey(),
                      text: "1",
                      color: Colors.black54,
                      f: () {
                        setState(
                          () {
                            if (clearResult) {
                              result = "0";
                              clearResult = false;
                            }
                            if (result.length == 1 && result == "0")
                              result = "";
                            if (result.length < 10) result += "1";
                          },
                        );
                      },
                    ),
                    Button(
                      key: UniqueKey(),
                      text: "2",
                      color: Colors.black54,
                      f: () {
                        setState(
                          () {
                            if (clearResult) {
                              result = "0";
                              clearResult = false;
                            }
                            if (result.length == 1 && result == "0")
                              result = "";
                            if (result.length < 10) result += "2";
                          },
                        );
                      },
                    ),
                    Button(
                      key: UniqueKey(),
                      text: "3",
                      color: Colors.black54,
                      f: () {
                        setState(
                          () {
                            if (clearResult) {
                              result = "0";
                              clearResult = false;
                            }
                            if (result.length == 1 && result == "0")
                              result = "";
                            if (result.length < 10) result += "3";
                          },
                        );
                      },
                    ),
                    Button(
                      key: UniqueKey(),
                      text: "+",
                      color: Colors.orange,
                      f: () {
                        setState(
                          () {
                            operator = "+";
                            firstOperand = result;
                            result = "0";
                          },
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 160,
                      child: Button(
                        key: UniqueKey(),
                        text: "0",
                        color: Colors.black54,
                        f: () {
                          setState(
                            () {
                              if (clearResult) {
                                result = "0";
                                clearResult = false;
                              }
                              if (result.length == 1 && result == "0")
                                result = "";
                              if (result.length < 10) result += "0";
                            },
                          );
                        },
                      ),
                    ),
                    Button(
                      key: UniqueKey(),
                      text: ",",
                      color: Colors.black54,
                      f: () {
                        setState(
                          () {
                            if (clearResult) {
                              result = "0";
                              clearResult = false;
                            }
                            if (!result.contains(".") && result.length < 10)
                              result += ".";
                          },
                        );
                      },
                    ),
                    Button(
                      key: UniqueKey(),
                      text: "=",
                      color: Colors.orange,
                      f: () {
                        setState(
                          () {
                            var num1 = double.parse(firstOperand);
                            var num2 = double.parse(result);
                            switch (operator) {
                              case "+":
                                result = (num1 + num2).toString();
                                break;
                              case "-":
                                result = (num1 - num2).toString();
                                break;
                              case "x":
                                result = (num1 * num2).toString();
                                break;
                              case "/":
                                result = (num1 / num2).toString();
                                break;
                              default:
                            }
                            operator = "";
                            firstOperand = "0";
                            clearResult = true;
                          },
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
