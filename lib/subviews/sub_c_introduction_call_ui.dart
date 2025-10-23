import 'package:flutter/material.dart';

class SubCIntroductionCallUi extends StatefulWidget {
  const SubCIntroductionCallUi({super.key});

  @override
  State<SubCIntroductionCallUi> createState() => _SubCIntroductionCallUiState();
}

class _SubCIntroductionCallUiState extends State<SubCIntroductionCallUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 232, 246),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/bank01.jpg',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 50,
              ),
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                        text: 'เมื่อเงินคือสิ่งสำคัญสำหรับการดำเนินชีวิต\n     '
                            '            กิน เที่ยว ซื้อสินค้า\n'
                            '         การเดินทาง การรักษาพยาบาล\n'
                            '              หรือโดนเหตุมิจฉาชีพ\n'
                            '        แก๊งตอลเซ็นเตอร์หลอกลวง\n'
                            '      สามารถติดต่อธนาคารโดยตรง\n '
                            '                  ได้เลย '),
                    TextSpan(text: 'โทรเลย!!!', style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'สายด่วน\nธนาคาร',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
