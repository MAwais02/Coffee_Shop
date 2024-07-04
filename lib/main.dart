import 'package:coffe_shop/homescreendetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(198, 124, 78, 1.0),
              primary: const Color.fromRGBO(198, 124, 78, 1.0)),
          textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
          focusColor: Colors.white),
      home: const Homescreendetails(),
    );
  }
}
