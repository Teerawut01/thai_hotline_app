import 'package:flutter/material.dart';

class SubAIntroductionCallUi extends StatefulWidget {
  const SubAIntroductionCallUi({super.key});

  @override
  State<SubAIntroductionCallUi> createState() => _SubAIntroductionCallUiState();
}

class _SubAIntroductionCallUiState extends State<SubAIntroductionCallUi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 230, 232, 246),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/passport01.jpg',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 40),
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
                    TextSpan(
                      text: 'เมื่อต้องเดินทางทั้งในเมืองออกต่างจังหวัด\n'
                          '               จะใกล้หรือไกลเพียงใด\n'
                          '    สอบถามข้อมูลการเดินทาง การจราจร\n'
                          '            ทางด่วน ทางหลัก ทางรอง\n'
                          '         เส้นทางเลี่ยงการจราจรติดขัด\n'
                          '     ข้อมูลรถทัวร์ รถไฟ ขสมก. BTS MRT\n'
                          '                 ชักช้าอยู่ใย ',
                    ),
                    TextSpan(
                      text: 'โทรเลย!!!',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'สายด่วน\nการเดินทาง',
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
