import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../service/AuthService.dart';



class Register extends StatefulWidget {
  const Register({super.key, required this.toggle});
  final void Function() toggle;

  @override
  State<Register> createState() => _LoginPageState();
}

class _LoginPageState extends State<Register> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AuthServices authServices = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register page "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    hintText: "email..",
                    enabledBorder: OutlineInputBorder(),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "password..",
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  authServices.signUpMethod(
                      emailcontroller.text, passwordController.text);
                },
                child: Text("sign-up")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already a member ? "),
                TextButton(
                  onPressed: widget.toggle,
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}