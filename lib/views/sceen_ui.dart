import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:thai_hotline_app/subviews/sub_a_introduction_call_ui.dart';
import 'package:thai_hotline_app/subviews/sub_b_introduction_call_ui.dart';
import 'package:thai_hotline_app/subviews/sub_c_introduction_call_ui.dart';
import 'package:thai_hotline_app/subviews/sub_d_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/home_ui.dart';

class SceenUi extends StatefulWidget {
  const SceenUi({super.key});

  @override
  State<SceenUi> createState() => _SceenUiState();
}

class _SceenUiState extends State<SceenUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: const Color.fromARGB(255, 230, 232, 246),
        pages: [
          PageViewModel(
            titleWidget: Text(
              'หน้า1',
            ),
            bodyWidget: SubAIntroductionCallUi(),
          ),
          PageViewModel(
            titleWidget: Text(
              'หน้า2',
            ),
            bodyWidget: SubBIntroductionCallUi(),
          ),
          PageViewModel(
            titleWidget: Text(
              'หน้า3',
            ),
            bodyWidget: SubCIntroductionCallUi(),
          ),
          PageViewModel(
            titleWidget: Text(
              'หน้า4',
            ),
            bodyWidget: SubDIntroductionCallUi(),
          ),
        ],
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(color: Colors.black),
        ),
        onSkip: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeUi()),
          );
        },
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        next: Icon(
          Icons.arrow_forward,
          color: Colors.black,
        ),
        done: Text(
          'เข้าสู่แอป',
          style: TextStyle(color: Colors.black),
        ),
        onDone: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeUi()),
          );
        },
      ),
    );
  }
}
