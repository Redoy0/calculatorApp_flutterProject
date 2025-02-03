import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallButton extends StatelessWidget {
  final Color buttonColor;
  final String? buttonText;
  Color textColor = Colors.black;

  final VoidCallback? buttonTap;

  CallButton({this.buttonText, required this.buttonColor, this.buttonTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        height: 70,
        width: 85,
        child: ElevatedButton(
          //shadow
          onPressed: buttonTap,
          style:
              ButtonStyle(backgroundColor: WidgetStatePropertyAll(buttonColor)),
          child: Text(
            "$buttonText",
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
