import 'package:flutter/material.dart';

class SubDIntroductionCallUi extends StatefulWidget {
  const SubDIntroductionCallUi({super.key});

  @override
  State<SubDIntroductionCallUi> createState() => _SubDIntroductionCallUiState();
}

class _SubDIntroductionCallUiState extends State<SubDIntroductionCallUi> {
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
                'assets/images/sunrise01.jpg',
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
                        text: '              น้ำไม่ไหล\n'
                            '              ไฟฟ้าดับ\n'
                            '             โทรไม่ติด\n'
                            '    อินเตอร์เน็ตมีปัญหา\n'
                            '  เข้า Social Media ไม่ได้\n'
                            '      รอไม่ได้ '),
                    TextSpan(text: 'โทรเลย!!!', style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '   สายด่วน\nสาธารณูปโภค',
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
