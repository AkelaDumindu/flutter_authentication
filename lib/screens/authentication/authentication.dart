import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/authentication/login.dart';
import 'package:flutter_firebase/screens/authentication/register.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool signinPage = true;

  void switchPages() {
    setState(() {
      signinPage = !signinPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (signinPage == true) {
      return Login(
        toggle: switchPages,
      );
    } else {
      return Register(
        toggle: switchPages,
      );
    }
  }
}
