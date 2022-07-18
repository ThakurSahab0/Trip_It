// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/app_cubit.dart';
import '../../../cubit/app_cubit_states.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
      return Scaffold(
          body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is BookingState) {
          var info = state.places;
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.maxFinite,
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/booking-image.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 70,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          BlocProvider.of<AppCubits>(context).goHome();
                        },
                        icon: Icon(Icons.home_outlined),
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        } else {
          return Container();
        }
      }));
    });
  }
}
