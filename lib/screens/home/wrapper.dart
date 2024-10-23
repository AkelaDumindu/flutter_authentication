import 'package:flutter/material.dart';
import 'package:flutter_firebase/models/userModel.dart';
import 'package:flutter_firebase/screens/authentication/authentication.dart';
import 'package:flutter_firebase/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    //the user data that the provider proides this can be a user data or can be null.
    final user = Provider.of<Usermodel?>(context);
    if (user == null) {
      return Authentication();
    } else {
      return HomePage();
    }
  }
}
