
import 'package:flutter/cupertino.dart';
import 'LoginScreen.dart';
import 'RegistrationScreen.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool loginPage = true;

  void toggle() {
    setState(() {
      loginPage = !loginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loginPage) {
      return LoginPage(
        toggle: toggle,
      );
    } else {
      return Register(
        toggle: toggle,
      );
    }
  }
}
