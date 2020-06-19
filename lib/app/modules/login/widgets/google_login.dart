
import 'package:flutter/material.dart';
import 'package:space_cast/app/modules/login/login_controller.dart';
import 'package:space_cast/app/modules/login/styles/login_styles.dart';
import 'package:space_cast/app/shared/assets/styles/main_styles.dart';

class Btn_Google_SignIn extends StatelessWidget {
  const Btn_Google_SignIn({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: dark_color,
        border: Border.all(
          color: dark_color,
          width: 2.0
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: SizedBox.expand(
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Entrar com Google', style: btn_text,),
            ],
          ),

        onPressed: controller.loginWithGoogle
        ),
      ),
    );
  }
}
