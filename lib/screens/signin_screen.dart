// ignore_for_file: prefer_const_constructors, prefer_final_fields, sort_child_properties_last, avoid_init_to_null, unused_field, avoid_unnecessary_containers, body_might_complete_normally_nullable, avoid_print, unused_import

// import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:Trip_app/misc/pages/welcome_page..dart';
import 'package:Trip_app/screens/home_screen.dart';
import 'package:Trip_app/screens/reset_password.dart';
import 'package:Trip_app/screens/signup_screen.dart';

import '../cubit/app_cubit.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  String name = "";
  bool changeButton = false;
  var _formkey = GlobalKey<FormState>();

  String? _nameError = null;
  bool _isVisible = false;

  // void validateEmail() {
  //   final bool isValid =
  //       EmailValidator.validate(_emailTextController.text.trim());
  //   if (isValid) {
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text('Valid email')));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // appBar: AppBar(
            //   title: Text("Fun app"),
            //   centerTitle: true,
            // ),
            backgroundColor: Colors.white,
            body: Form(
              key: _formkey,
              child: ListView(children: [
                Container(
                  child: Image.asset(
                    "images/login_image.png",
                    fit: BoxFit.cover,
                  ),
                ),
                // Padding(padding: EdgeInsets.symmetric(vertical: 22)),
                Center(
                  child: Text(
                    "Welcome",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailTextController,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter Email ID';
                          }
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline),
                          hintText: "Enter Email ID",
                          labelText: "Email ID",
                          // labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(38.0)),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      TextFormField(
                        controller: _passwordTextController,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter password';
                          } else if (value.length < 6) {
                            return 'Password length must be grater than 6 digit';
                          } else if (value.length > 14) {
                            return 'Password length should be smaller than 14 digit';
                          }
                        },
                        obscureText: !_isVisible,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            icon: _isVisible
                                ? Icon(
                                    Icons.visibility,
                                    color: Colors.black54,
                                  )
                                : Icon(Icons.visibility_off),
                            color: Colors.grey,
                          ),

                          hintText: "Please enter password",
                          labelText: "Password",
                          // labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(38.0)),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      forgetPassword(context),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 340,
                        height: 45,
                        child: ElevatedButton(
                            child: Text(
                              "LOG IN",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  // TextButton.styleFrom(minimumSize: Size(320, 40)),
                                ),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                if (_formkey.currentState!.validate()) {}
                              });

                              // showToast();       showing in both with or without
                              FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                      email: _emailTextController.text.trim(),
                                      password:
                                          _passwordTextController.text.trim())
                                  .then((value) {
                                // showToast();
                                BlocProvider.of<AppCubits>(context)
                                    .getWelcomePage();
                              }).onError((error, stackTrace) {
                                print("Error ${error.toString()}");
                                // validateEmail();
                                showToast();
                              });
                            }),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      signUpOption()
                    ],
                  ),
                ),
              ]),
            )));
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have account?",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        GestureDetector(
          onTap: () {
            BlocProvider.of<AppCubits>(context).getSignUp();
          },
          child: Text(
            " Sign Up",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        )
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.blueGrey),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResetPassword())),
      ),
    );
  }

  void showToast() => Fluttertoast.showToast(
      msg: "No account found", fontSize: 18, backgroundColor: Colors.black54);

  // void showToast_email() => Fluttertoast.showToast(
  //     msg: "Not a valid Email", fontSize: 18, backgroundColor: Colors.black54);
}
