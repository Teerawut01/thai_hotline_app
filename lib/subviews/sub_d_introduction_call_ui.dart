import 'package:flutter/material.dart';

class SubDIntroductionCallUi extends StatefulWidget {
  const SubDIntroductionCallUi({super.key});

  @override
  State<SubDIntroductionCallUi> createState() => _SubDIntroductionCallUiState();
}

class _SubDIntroductionCallUiState extends State<SubDIntroductionCallUi> {
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
                'assets/images/sunrise01.jpg',
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
                      text: 'น้ำไม่ไหล\n'
                          'ไฟฟ้าดับ\n'
                          'โทรไม่ติด\n'
                          'อินเตอร์เน็ตมีปัญหา\n'
                          'เข้า Social Media ไม่ได้\n'
                          'รอไม่ได้ ',
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
              'สายด่วน\nสาธารณูปโภค',
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
