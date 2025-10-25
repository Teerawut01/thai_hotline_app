import 'package:flutter/material.dart';
import 'package:thai_hotline_app/model/phonelist.dart';
import 'package:url_launcher/url_launcher.dart';

class SubBHomeUi extends StatefulWidget {
  const SubBHomeUi({super.key});

  @override
  State<SubBHomeUi> createState() => _SubBHomeUiState();
}

class _SubBHomeUiState extends State<SubBHomeUi> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  List<SubList> subList = [
    SubList(
      name: 'เหตุด่วน-เหตุร้าย',
      phone: '191',
      image: 'https://tse1.mm.bing.net/th/id/OIP.GjlHZPyLUMf0_ZOcLrHioQAAAA?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'แจ้งไฟไหม้-สัตส์เข้าบ้าน',
      phone: '199',
      image: 'https://tse2.mm.bing.net/th/id/OIP.a8dY0Wsy8avnVZ6xw8t8egHaGD?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'สายด่วนรถหาย\n(ตำรวจแห่งชาติ)',
      phone: '1192',
      image: 'https://tse1.mm.bing.net/th/id/OIP.GjlHZPyLUMf0_ZOcLrHioQAAAA?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'อุบัติเหตุทางน้ำ',
      phone: '1300',
      image: 'https://2.bp.blogspot.com/-DI_BF5uvREU/TqoHLbI-X2I/AAAAAAAAHx0/DB79gqM-pDE/s1600/1210255402804.jpg',
    ),
    SubList(
      name: 'แจ้งคนหาย',
      phone: '1300',
      image: 'https://tse1.mm.bing.net/th/id/OIP.mHHesKt5mjSQNMaXQiSrSgHaHZ?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'ศูนย์ปลอดถัยคมนาคม',
      phone: '1356',
      image: 'https://tse1.mm.bing.net/th/id/OIP.w-h1a41guQVayAJiZM7EbgHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'หน่วยแพท์กู้ชีพ',
      phone: '1554',
      image: 'https://tse1.mm.bing.net/th/id/OIP.flwDA24G5qojp8lSGohP4AHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'ศูนย์เอราวัณ',
      phone: '1646',
      image: 'https://tse3.mm.bing.net/th/id/OIP.0nPHr4hFpKLX9sRY5KM9uAHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'เจ็บป่วยฉุกเฉิน',
      phone: '1669',
      image: 'https://tse3.mm.bing.net/th/id/OIP.v6hXh4A9hDKAYA3sAIYcQQAAAA?w=300&h=300&rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 232, 246),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              '         สายด่วน\vอุบัติเหตุ-เหตุฉุกเฉิน',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/police01.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: subList.length,
                separatorBuilder: (context, index) => SizedBox(),
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    onTap: () {
                      _makePhoneCall(subList[index].phone!);
                    },
                    leading: Image.network(
                      subList[index].image!,
                    ),
                    title: Text(
                      subList[index].name!,
                    ),
                    subtitle: Text(
                      subList[index].phone!,
                    ),
                    trailing: Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
