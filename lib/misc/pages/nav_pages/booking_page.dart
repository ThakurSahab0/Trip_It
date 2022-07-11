import 'package:flutter/cupertino.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("img/booking-image.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
