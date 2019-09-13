import 'package:flutter/material.dart';

class PurpleButton extends StatelessWidget {
  PurpleButton({Key key, this.text, this.theMethod}) : super(key: key);
  final String text;
  final theMethod;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(text, style: TextStyle(color: Colors.purple),),
      onPressed: theMethod,
    );
  }
}