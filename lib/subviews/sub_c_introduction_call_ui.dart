import 'package:flutter/material.dart';

class SubCIntroductionCallUi extends StatefulWidget {
  const SubCIntroductionCallUi({super.key});

  @override
  State<SubCIntroductionCallUi> createState() => _SubCIntroductionCallUiState();
}

class _SubCIntroductionCallUiState extends State<SubCIntroductionCallUi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 230, 232, 246),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/bank01.jpg',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text.rich(
                TextSpan(
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    const TextSpan(
                      text: 'เมื่อเงินคือสิ่งสำคัญสำหรับการดำเนินชีวิต\n'
                          'กิน เที่ยว ซื้อสินค้า\n'
                          'การเดินทาง การรักษาพยาบาล\n'
                          'หรือโดนเหตุมิจฉาชีพ\n'
                          'แก๊งคอลเซ็นเตอร์หลอกลวง\n'
                          'สามารถติดต่อธนาคารโดยตรง\n'
                          'ได้เลย ',
                    ),
                    TextSpan(
                      text: 'โทรเลย!!!',
                      style: const TextStyle(color: Colors.red),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'สายด่วน\nธนาคาร',
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
    );
  }
}
