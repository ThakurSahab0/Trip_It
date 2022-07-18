
// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../model/insp_model.dart';

class InspirationPage extends StatelessWidget {
  final IndexModel imagemodel;
  const InspirationPage({Key? key, required this.imagemodel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(imagemodel.Indxes),
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}
