import 'package:flutter/material.dart';
import 'package:flutter_firebase/constant/colors.dart';
import 'package:flutter_firebase/constant/description.dart';
import 'package:flutter_firebase/constant/style.dart';
import 'package:flutter_firebase/services/auth.dart';

class Login extends StatefulWidget {
  final Function toggle;
  const Login({super.key, required this.toggle});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
// ref for auth service class
  final AuthServices _auth = AuthServices();

  // form key
  final _formKey = GlobalKey<FormState>();

  // email password state
  String email = "";
  String password = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgBlack,
      appBar: AppBar(
        title: Text(
          "Sign In",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: bgBlack,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Column(
            children: [
              Text(
                description,
                style: descriptionStyle,
              ),
              Image.asset(
                "../assets/images/man.png",
                height: 150,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // email
                    TextFormField(
                      decoration: textInputDecoration,
                      validator: (value) {
                        value!.isEmpty ? "Please enter valid email" : null;
                      },
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    // password
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration:
                          textInputDecoration.copyWith(hintText: "password"),
                      validator: (value) {
                        value!.length < 6
                            ? "Password must be at least 6 characters"
                            : null;
                      },
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    const Text(
                      "Login with social accounts",
                      style: descriptionStyle,
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red),
                    ),
                    GestureDetector(
                      //sing in with google
                      onTap: () {},
                      child: Center(
                        child: Image.asset(
                          'assets/images/google.png',
                          height: 50,
                        ),
                      ),
                    ),

                    Row(
                      children: [
                        const Text(
                          "Do not have an account?",
                          style: descriptionStyle,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          //go to the register page

                          onTap: () {
                            widget.toggle();
                          },

                          child: const Text(
                            "REGISTER",
                            style: TextStyle(
                                color: mainBlue, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),

                    //button
                    const SizedBox(
                      height: 20,
                    ),

                    GestureDetector(
                      onTap: () async {
                        dynamic result = await _auth.signinWithEmailAndPassword(
                            email, password);

                        if (result == null) {
                          setState(() {
                            error = "Could not signin with those credentials";
                          });
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            color: bgBlack,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: mainYellow)),
                        child: const Center(
                            child: Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    // anonymouse
                    GestureDetector(
                      //methode for login user as anon
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            color: bgBlack,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: mainYellow)),
                        child: const Center(
                          child: Text(
                            "LOGIN AS GUEST",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ElevatedButton(
//         onPressed: () async {
//           dynamic result = await _auth
//               .signInAnonymously(); // we use dynamoc so we dont know data type
//           if (result == null) {
//             print("Error in signin");
//           } else {
//             print("sign in anony");
//           }
//         },
//         child: Text("Sign in anonymously"),
//       ),
