import 'package:flutter/material.dart';
import 'package:helloworld/main.dart';
import 'package:helloworld/service/AuthService.dart';
import 'package:provider/provider.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreen();

}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
          body: content(),
    );
  }

  AuthServices authServices = AuthServices();

  Widget content() {
    return Center(
      child: Container(
        child: ElevatedButton(
          onPressed: () {
            authServices.signOut();
          },
          child: Text("Logout"),
        ),
      ),
    );
  }
  }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text("YaYY... you are logged in"),
//       ),
//     );
//   }
// }