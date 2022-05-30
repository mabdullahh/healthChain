import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../widgets/rounded_button.dart';
import '../../widgets/rounded_input.dart';
import '../../widgets/rounded_password_input.dart';
import '../patient/patient_nav_screen.dart';
import 'package:http/http.dart' as http;

class FpatientLoginScreen extends StatefulWidget {
  FpatientLoginScreen({Key? key}) : super(key: key);

  @override
  State<FpatientLoginScreen> createState() => _FpatientLoginScreenState();
}

class _FpatientLoginScreenState extends State<FpatientLoginScreen> {
  TextEditingController usernameTec = TextEditingController();

  TextEditingController passwordTec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Welcome Back',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(height: 40),
                Image.asset(
                  'assets/vectors/034.png',
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                const SizedBox(height: 40),
                RoundedInput(
                  icon: Icons.mail,
                  hint: 'Username',
                  controller: usernameTec,
                ),
                RoundedPasswordInput(
                  hint: 'Password',
                  controller: passwordTec,
                ),
                const SizedBox(height: 10),
                RoundedButton(
                    title: 'LOGIN',
                    onTap: () {
                      login();
                    }),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> login() async {
    if (usernameTec.text.isNotEmpty && passwordTec.text.isNotEmpty) {
      var response = await http.post(
        Uri.parse('http://10.0.2.2:8000/api/auth/'),
        body: jsonEncode({'username': '${usernameTec.text}', 'password': '${passwordTec.text}'}),
          headers: {
            "Accept": "application/json",
            "content-type":"application/json"
          },



      );
      if (response.statusCode == 200) {
        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const PatientNavScreen()),
        );
        print(jsonDecode(response.body));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Invalid credentials')));

      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Username or password is empty')));
    }
  }
}
