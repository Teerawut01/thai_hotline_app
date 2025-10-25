import 'package:flutter/material.dart';
import 'package:thai_hotline_app/model/phonelist.dart';
import 'package:url_launcher/url_launcher.dart';

class SubCHomeUi extends StatefulWidget {
  const SubCHomeUi({super.key});

  @override
  State<SubCHomeUi> createState() => _SubCHomeUiState();
}

class _SubCHomeUiState extends State<SubCHomeUi> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  List<SubList> subList = [
    SubList(
      name: 'ธนาคาร กรุงเทพ',
      phone: '1333',
      image: 'https://i0.wp.com/www.kanjanabaramee.org/wp-content/uploads/2017/11/bbl_logo.jpg?fit=600,600&ssl=1',
    ),
    SubList(
      name: 'ธนาคาร ธอส',
      phone: '02 645 9000',
      image: 'https://tse4.mm.bing.net/th/id/OIP.ftlm3xFFsYpxiwhzcLYSIwAAAA?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'ธนาคาร ออมสิน',
      phone: '1115',
      image:
          'https://media.licdn.com/dms/image/v2/D560BAQFAiqRt6gYCkg/company-logo_200_200/company-logo_200_200/0/1736484822099/government_savings_bank_logo?e=2147483647&v=beta&t=qZNUNcwvPoDeaoGqYkp10x2MXkHhT_7bAhvT4pBumUg',
    ),
    SubList(
      name: 'ธนาคาร ไทยพาณิชย์',
      phone: '02 777 7777',
      image:
          'https://th.bing.com/th/id/R.9b32def5bffb335323a67f49e28fe870?rik=7AdaNBlBnfV8kw&riu=http%3a%2f%2fwww.karaoke.co.th%2fwp-content%2fuploads%2f2017%2f06%2ficon-bank-scb.png&ehk=luae8sB%2f7RLbQb3cRrdjfnyYJkIVQJiZfQTaL%2bTIJ7o%3d&risl=&pid=ImgRaw&r=0',
    ),
    SubList(
      name: 'ธนาคาร กสิกรไทย',
      phone: '02 888 8888',
      image: 'https://blog.masii.co.th/wp-content/uploads/2019/08/unnamed.png',
    ),
    SubList(
      name: 'ธนาคาร เกียรตินาคินภัทร',
      phone: '02 165 5555',
      image: 'https://tse1.mm.bing.net/th/id/OIP.biWFzy0WWO7JywtWv9zA9QAAAA?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'ธนาคาร กรุงไทย',
      phone: '02 111 1111',
      image: 'https://i0.wp.com/ghanadmission.com/us/wp-content/uploads/2021/10/Krung-Thai-Bank-Public-Company-Limited.jpg',
    ),
    SubList(
      name: 'ธนาคาร ไทยเครดิต',
      phone: '02 697 5454',
      image: 'https://tse4.mm.bing.net/th/id/OIP.yd5kAAgMS_Ewx53Nwh_N3wHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'ธนาคาร กรุงศรี',
      phone: '1572',
      image: 'https://th.bing.com/th/id/R.e76fa9f3ed280a6730ce4f4b7a7cb537?rik=EyHgookMnu4jQg&pid=ImgRaw&r=0',
    ),
    SubList(
      name: 'ธนาคารอ ยูโอบี',
      phone: '02 285 1555',
      image: 'https://tse4.mm.bing.net/th/id/OIP.dGq6raCinHMLPYDQ0qZxQwHaHa?w=600&h=600&rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'ธนาคาร ทีเอ็มบีธนชาต',
      phone: '1428',
      image:
          'https://th.bing.com/th/id/R.cf34053a1e407287539e32245da85801?rik=PW8dFTWuHaxjNQ&riu=http%3a%2f%2facnews.net%2fadmin%2fimg_large%2f1119121.jpg&ehk=VBG4l%2b%2bCyX1MtMWLZs0LWoQB2Z6xS8FK89Y6R3bTlyw%3d&risl=&pid=ImgRaw&r=0',
    ),
    SubList(
      name: 'ธนาคาร ทิสโก้',
      phone: '02 633 6000',
      image:
          'https://th.bing.com/th/id/R.400edd5a45f643f8d13993373e66212e?rik=%2fqhS86amD2XhOQ&riu=http%3a%2f%2fupload.wikimedia.org%2fwikipedia%2fen%2ff%2ff8%2fTisco_logo.png&ehk=mH9fwLyWGtNQBMX74waCsxw5JyX4VTGZ3srvUxlpMbg%3d&risl=&pid=ImgRaw&r=0',
    ),
    SubList(
      name: 'ธนาคาร ชิตี้แบงค์',
      phone: '1588',
      image: 'https://tse2.mm.bing.net/th/id/OIP.JP9ZJSX6KTyK1B6qQUHFswHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'ธนาคาร แลนด์ แอนด์ เฮ้าส์',
      phone: '1327',
      image: 'https://t1.blockdit.com/photos/2022/07/62be569d9c53fa8fb86faa86_800x0xcover_owfBf50e.jpg',
    ),
    SubList(
      name: 'ธนาคาร อิสลาม',
      phone: '02 204 2766',
      image: 'https://th.bing.com/th/id/R.7d2b3169f554e24250474ba5ec897e16?rik=1a4Eu9q%2b43cfUA&pid=ImgRaw&r=0',
    ),
    SubList(
      name: 'ธนาคาร ชีไอเอ็มบี ไทย',
      phone: '02 626 7777',
      image: 'https://tse1.mm.bing.net/th/id/OIP.Qo5v9Drv2y-x64SLMOe14gHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
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
              'สายด่วน\nธนาคาร',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/bank01.jpg',
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
