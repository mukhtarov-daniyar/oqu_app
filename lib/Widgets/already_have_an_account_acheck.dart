import 'package:flutter/material.dart';


class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Есептік жазбаңыз жоқ па? " : "Тіркелгіңіз бар ма? ",
          style: TextStyle(color: Colors.deepPurple),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Тіркелу" : "Кіру",
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
