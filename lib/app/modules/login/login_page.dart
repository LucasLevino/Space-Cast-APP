import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:space_cast/app/modules/login/widgets/google_login.dart';
import 'package:space_cast/app/modules/login/widgets/logo_login.dart';
import 'package:space_cast/app/shared/assets/styles/main_styles.dart';
import 'login_controller.dart';

  
class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
             color: light_color
          ),

          padding: EdgeInsets.only(
            top: 24,
            left: 24,
            right: 24,
          ),
          
          child: ListView(
            
            children:[
              
                Row(  children: <Widget>[
                  Text('Space Cast',style: h1_text),
                  ],
                ),

              // Espacamento  
                SizedBox(height: 32),

              // Imagem Logo
                Logo_Img(),

              // Espacamento  
                SizedBox(height: 72),

              // Botao Login com Google 
                Btn_Google_SignIn(controller: controller),  

            ]
          ),
        ),
      )
    );
  }
}


