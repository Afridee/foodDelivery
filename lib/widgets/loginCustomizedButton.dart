import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/constants.dart';


class LoginCustomizedButton extends StatefulWidget {

  final String buttonText;

  const LoginCustomizedButton({Key? key, required this.buttonText}) : super(key: key);

  @override
  State<LoginCustomizedButton> createState() => _LoginCustomizedButtonState();
}

class _LoginCustomizedButtonState extends State<LoginCustomizedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            lightPrimaryColor,
            darkPrimaryColor,
          ])),
      child: Center(
        child: Text(
          widget.buttonText,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
