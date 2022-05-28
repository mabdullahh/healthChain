import 'package:flutter/material.dart';
import 'package:health_chain/screens/doctor/doctor_nav_screen.dart';

import '../rounded_button.dart';
import '../rounded_input.dart';
import '../rounded_password_input.dart';

class LoginForm extends StatelessWidget {
   LoginForm({
    Key? key,
    required this.isLogin,
    required this.animationDuration,
    required this.size,
    required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;
  var usernameTEC = TextEditingController();
  var passwordTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 1.0 : 0.0,
      duration: animationDuration * 4,
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: size.width,
          height: defaultLoginSize,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children:  [
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                  ),
                ),

                const SizedBox(height: 40),


                Image.asset('assets/vectors/034.png',height: MediaQuery.of(context).size.height * 0.25,),

                const SizedBox(height: 40),

                 RoundedInput(icon: Icons.mail, hint: 'Username',controller: usernameTEC,),

                 RoundedPasswordInput(hint: 'Password',controller: passwordTEC,),


                const SizedBox(height: 10),

                RoundedButton(title: 'LOGIN',onTap:(){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const DoctorNavScreen()),
                  );
                }),

                const SizedBox(height: 10),

              ],
            ),
          ),
        ),
      ),
    );
  }
}