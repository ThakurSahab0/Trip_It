// ignore_for_file: prefer_const_constructors

import 'package:Trip_app/misc/pages/nav_pages/booking_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Trip_app/cubit/app_cubit.dart';
import 'package:Trip_app/cubit/app_cubit_states.dart';
import 'package:Trip_app/screens/signin_screen.dart';
import 'package:Trip_app/screens/signup_screen.dart';
import '../misc/pages/details_page.dart';
import '../misc/pages/main_page.dart';
import '../misc/pages/welcome_page..dart';
import '../screens/welcome.dart';

class AppCubitLogic extends StatefulWidget {
  const AppCubitLogic({Key? key}) : super(key: key);

  @override
  State<AppCubitLogic> createState() => _AppCubitLogicState();
}

class _AppCubitLogicState extends State<AppCubitLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is WelcomeState) {
            return WelcomeScreen();
          }
          if (state is BookingState) {
            return BookingPage();
          }
          if (state is SignInState) {
            return SignInScreen();
          }

          if (state is SignUpState) {
            return SignUpScreen();
          }
          if (state is MyWelcomeState) {
            return WelcomePage();
          }
          if (state is DetailState) {
            return DetailsPage();
          }
          if (state is LoadedState) {
            return MainPage();
          }
          if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
