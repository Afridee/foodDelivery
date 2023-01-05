import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {

  final TextEditingController textController;
  final String hintText;
  final String labelText;
  final bool hideText;


  const Textfield({Key? key, required this.textController, required this.hintText, required this.labelText, required this.hideText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Colors.grey))),
      child: TextField(
        controller: textController,
        obscureText: hideText,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {

        },
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: labelText,
            hintStyle: TextStyle(
                color: Colors.grey[400])),
      ),
    );
  }
}
