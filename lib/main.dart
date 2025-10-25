import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:thai_hotline_app/subviews/sub_a_home_ui.dart';
import 'package:thai_hotline_app/subviews/sub_a_introduction_call_ui.dart';
import 'package:thai_hotline_app/subviews/sub_b_introduction_call_ui.dart';
import 'package:thai_hotline_app/subviews/sub_c_introduction_call_ui.dart';
import 'package:thai_hotline_app/subviews/sub_d_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/home_ui.dart';
import 'package:thai_hotline_app/views/introduction_call_ui.dart';

void main() {
  runApp(
    ThaiHotlineApp(),
  );
}

class ThaiHotlineApp extends StatefulWidget {
  const ThaiHotlineApp({super.key});

  @override
  State<ThaiHotlineApp> createState() => _ThaiHotlineAppState();
}

class _ThaiHotlineAppState extends State<ThaiHotlineApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.procionoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
