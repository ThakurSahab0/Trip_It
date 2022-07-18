// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, camel_case_types, avoid_print

import 'package:Trip_app/cubit/app_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: body(),
    );
  }
}

class body extends StatefulWidget {
  const body({Key? key}) : super(key: key);

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/log-out.png",
            height: size.height * 0.45,
          ),
          SizedBox(
            height: 10,
          ),
          const Text(
            "Oh no! You're leaving...",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
          ),
          SizedBox(
            height: 4,
          ),
          const Text(
            "Are you Sure?",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
          ),

          SizedBox(
            height: 95,
          ),
          Container(
            width: size.width * 0.75,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: ElevatedButton(
                child: Text("Logout"),
                onPressed: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    print("Sign Out");
                    BlocProvider.of<AppCubits>(context).getSignIn();
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "images/main_top.png",
                width: size.width * 0.3,
              )),
          Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "images/main_bottom.png",
                width: size.width * 0.2,
              )),
          child,
        ],
      ),
    );
  }
}
