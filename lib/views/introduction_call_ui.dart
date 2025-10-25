import 'package:flutter/material.dart';
import 'package:thai_hotline_app/subviews/sub_a_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/home_ui.dart';
import 'package:thai_hotline_app/views/sceen_ui.dart';

class IntroductionCallUi extends StatefulWidget {
  const IntroductionCallUi({super.key});

  @override
  State<IntroductionCallUi> createState() => _IntroductionCallUiState();
}

class _IntroductionCallUiState extends State<IntroductionCallUi> {
  @override
  void initState() {
    // โค้ดหน่วงเวลา และเปิดไปที่หน้าจอ SubAintroductionCallUi
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SceenUi()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 142, 150, 207),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/passport01.jpg',
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.5,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 40),
            Text(
              '   สายด่วน THAILAND',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            CircularProgressIndicator(color: Colors.white),
            SizedBox(height: 40),
            Text(
              'Createst by Teerawut.P SAU',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            Text(
              'Copyright © 2025',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
