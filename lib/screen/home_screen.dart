import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:mycalculator/button.dart';
import 'package:mycalculator/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = "";
  var answer = " ";
  bool isEqualPress = false;
  //---Function for input box---//

  void buttonClick(String btnText) {
    setState(() {
      isEqualPress = false;

      if (btnText == "=") {
        Operations();
      } else if (btnText == "C") {
        userInput = " ";
        answer = " ";
      } else if (btnText == "D") {
        if (userInput.isNotEmpty) {
          userInput = userInput.substring(0, userInput.length - 1);
        } else if (userInput.isEmpty) {
          answer = " ";
        }
      } else if ("+-*/%".contains(btnText)) {
        if (userInput.isNotEmpty &&
            "+-*/%".contains(userInput[userInput.length - 1])) {
          userInput = userInput.substring(0, userInput.length - 1) + btnText;
        } else {
          userInput += btnText;
        }
      } else {
        userInput += btnText;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //----AppBar----//
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              size: 40,
            ),
            Text(
              "Calculator",
              style: TextStyle(
                  fontSize: 30, color: appTitle, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.settings,
              size: 40,
            )
          ],
        ),
        centerTitle: true,
      ),

      //---Body---//

      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //---Input BOX---//
                Container(
                  margin: EdgeInsets.only(right: 10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "$userInput",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isEqualPress ? 30 : 50,
                        color: isEqualPress ? Colors.black54 : Colors.black),
                  ),
                ),
                //---Answer BOX---//
                Container(
                  margin: EdgeInsets.only(right: 10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "$answer",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isEqualPress ? 50 : 30,
                        color: isEqualPress ? Colors.black : Colors.black54),
                  ),
                ),
              ],
            ),
          ),
          //---Button---//

          Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CallButton(
                        buttonText: "C",
                        buttonColor: appButtonDark,
                        buttonTap: () {
                          setState(() {
                            buttonClick("C");
                            Operations();
                          });
                        },
                      ),
                      CallButton(
                        buttonText: "D",
                        buttonColor: appButton,
                        buttonTap: () {
                          setState(() {
                            buttonClick("D");
                            Operations();
                          });
                        },
                      ),
                      CallButton(
                        buttonText: "%",
                        buttonColor: appButton,
                        buttonTap: () {
                          setState(() {
                            buttonClick("%");
                            Operations();
                          });
                        },
                      ),
                      CallButton(
                        buttonText: "/",
                        buttonColor: appButton,
                        buttonTap: () {
                          setState(() {
                            buttonClick("/");
                            Operations();
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CallButton(
                        buttonText: "7",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("7");
                            Operations();
                          });
                        },
                      ),
                      CallButton(
                        buttonText: "8",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("8");
                            Operations();
                          });
                        },
                      ),
                      CallButton(
                        buttonText: "9",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("9");
                            Operations();
                          });
                        },
                      ),
                      CallButton(
                        buttonText: "x",
                        buttonColor: appButton,
                        buttonTap: () {
                          setState(() {
                            buttonClick("x");
                            Operations();
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CallButton(
                        buttonText: "4",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("4");
                            Operations();
                          });
                        },
                      ),
                      CallButton(
                        buttonText: "5",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("5");
                            Operations();
                          });
                        },
                      ),
                      CallButton(
                        buttonText: "6",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("6");
                            Operations();
                          });
                        },
                      ),
                      CallButton(
                        buttonText: "-",
                        buttonColor: appButton,
                        buttonTap: () {
                          setState(() {
                            buttonClick("-");
                            Operations();
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CallButton(
                        buttonText: "1",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("1");
                            Operations();
                          });
                        },
                      ),
                      CallButton(
                        buttonText: "2",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("2");
                            Operations();
                          });
                        },
                      ),
                      CallButton(
                        buttonText: "3",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("3");
                            Operations();
                          });
                        },
                      ),
                      CallButton(
                        buttonText: "+",
                        buttonColor: appButton,
                        buttonTap: () {
                          setState(() {
                            buttonClick("+");
                            Operations();
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CallButton(
                        buttonText: "0",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("0");
                            Operations();
                          });
                        },
                      ),
                      CallButton(
                        buttonText: "00",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("00");
                            Operations();
                          });
                        },
                      ),
                      CallButton(
                        buttonText: ".",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick(".");
                            Operations();
                          });
                        },
                      ),
                      CallButton(
                        buttonText: "=",
                        buttonColor: appButtonDark,
                        buttonTap: () {
                          setState(() {
                            buttonClick("=");
                            Operations();
                            isEqualPress = true;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ))
        ],
      ),
    );
  }

  //...Calculation Function fo Equal Button...//
  void Operations() {
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll("x", "*").replaceAll("%", "/100");

    //operation calculation
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();
    double evaluation = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = evaluation.toString();
  }
}
