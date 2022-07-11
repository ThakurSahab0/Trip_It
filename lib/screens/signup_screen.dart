// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, avoid_init_to_null, sort_child_properties_last, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:Trip_app/screens/home_screen.dart';

import '../cubit/app_cubit.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _usernameTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  // String name = "";
  // bool changeButton = false;
  var _formkey = GlobalKey<FormState>();

  // String? _nameError = null;
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          title: Text(
            "Sign Up",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        body: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _usernameTextController,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter Username';
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline),
                      hintText: "Enter Username",
                      labelText: "Username",
                      // labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(38.0)),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    controller: _emailTextController,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter Email ID';
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outline),
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
                    height: 30,
                  ),
                  SizedBox(
                    width: 340,
                    height: 45,
                    child: ElevatedButton(
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: _emailTextController.text.trim(),
                                  password: _passwordTextController.text.trim())
                              .then((value) {
                            // print("Created New Account");
                            showToast1();
                            BlocProvider.of<AppCubits>(context)
                                .getWelcomePage();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  void showToast1() => Fluttertoast.showToast(
      msg: "Created New Account",
      fontSize: 18,
      backgroundColor: Colors.black54);
}
