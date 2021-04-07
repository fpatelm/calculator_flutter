import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  String text;
  Color color;
  Function f;
  Button({Key key, this.text, this.color, this.f}) : super(key: key);

  @override
  _ButtonState createState() {
    return _ButtonState(text: text, color: color, f: f);
  }
}

class _ButtonState extends State<Button> {
  String text;
  Color color;
  Function f;

  _ButtonState({this.text, this.color, this.f});

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: Colors.black54)),
      child: Text(
        text,
        style: TextStyle(fontSize: 23),
      ),
      onPressed: f,
      height: 70,
      color: color,
      textColor: Colors.white,
    );
    ;
  }
}
