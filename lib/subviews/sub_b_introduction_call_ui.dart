import 'package:flutter/material.dart';

class SubBIntroductionCallUi extends StatefulWidget {
  const SubBIntroductionCallUi({super.key});

  @override
  State<SubBIntroductionCallUi> createState() => _SubBIntroductionCallUiState();
}

class _SubBIntroductionCallUiState extends State<SubBIntroductionCallUi> {
  @override
  Widget build(BuildContext context) {
    {
      return Container(
        color: const Color.fromARGB(255, 230, 232, 246),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/police01.jpg',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'อุบัติเหตุ ป่วยฉุกเฉิน ไฟไหม้\n'
                              'รถหาย สัตว์ร้ายเข้าบ้าน\n'
                              'ทุกอย่างเกิดขึ้นได้ตลอดเวลา\n'
                              'จะดีกว่าไหม\n'
                              'เมื่อพบเจออุบัติเหตุ เหตุด่วน เหตุร้าย\n'
                              'สามารถโทรแจ้งได้ทันท่วงที\n'
                              'ไม่ต้องรอ ',
                        ),
                        TextSpan(
                          text: 'โทรเลย!!!',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิน',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
