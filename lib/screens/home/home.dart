import 'package:flutter/material.dart';
import 'package:flutter_firebase/services/auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue,
        actions: [
          ElevatedButton(
            onPressed: () async {
              await _auth.signOut();
            },
            child: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
