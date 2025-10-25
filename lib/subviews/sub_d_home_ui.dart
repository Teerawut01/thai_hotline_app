import 'package:flutter/material.dart';
import 'package:thai_hotline_app/model/phonelist.dart';
import 'package:url_launcher/url_launcher.dart';

class SubDHomeUi extends StatefulWidget {
  const SubDHomeUi({super.key});

  @override
  State<SubDHomeUi> createState() => _SubDHomeUiState();
}

class _SubDHomeUiState extends State<SubDHomeUi> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  List<SubList> subList = [
    SubList(
      name: 'ไฟฟ้านครหลวง',
      phone: '1130',
      image:
          'https://th.bing.com/th/id/R.51083ca086b8d55e47ed4f026195fa1f?rik=KXWDp%2fSOOpyulQ&riu=http%3a%2f%2fwww.gmsarn.com%2fconference2013%2fimages%2fsponsors%2fMEA.png&ehk=XV%2bhrOec%2b6U1sZoE6ugnqf1iYxUHA8l1nfHtxoan%2b9g%3d&risl=&pid=ImgRaw&r=0',
    ),
    SubList(
      name: 'ไฟฟ้าส่วนภูมิภาค',
      phone: '1129',
      image: 'https://tse4.mm.bing.net/th/id/OIP.eYvMb01Yd7ibJuGkEqasVwHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'ไฟฟ้าฝ่ายผลิต',
      phone: '1416',
      image: 'https://tse3.mm.bing.net/th/id/OIP.YpnnbimVurLBFXD88xNWTwHaHa?w=495&h=495&rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'การประปานครหลวง',
      phone: '1125',
      image: 'https://tse3.mm.bing.net/th/id/OIP.FNsPJRfHglDoqQpuBtftYwAAAA?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'การประป่าส่วนภูมิภาค',
      phone: '1662',
      image:
          'https://th.bing.com/th/id/R.92dc3880204fd7a652f8a1e0f31b1fc8?rik=CsiOtoNv68kT8g&riu=http%3a%2f%2fwww.esvector.net%2fhome_es%2fimages%2fstories%2flogo%2f01-16%2fWater_group.jpg&ehk=yqGU5BMA4%2bFYs%2bxYQMdjkGyglCK7fj5AvoSVdzxAHrk%3d&risl=&pid=ImgRaw&r=0',
    ),
    SubList(
      name: 'True',
      phone: '1242',
      image: 'https://tse2.mm.bing.net/th/id/OIP.QaD6vC9WScxp9V0bNVepUgHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'Dtac',
      phone: '1678',
      image: 'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/23/ee/84/23ee8421-463e-d44a-4f7b-132d549c36ab/AppIcon-0-0-1x_U007emarketing-0-5-0-sRGB-85-220.png/246x0w.webp',
    ),
    SubList(
      name: 'AIS',
      phone: '1175',
      image: 'https://tse2.mm.bing.net/th/id/OIP.lefAeoVOxI7nXlsBbaDXugAAAA?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    SubList(
      name: 'TOT',
      phone: '1100',
      image: 'https://images.crunchbase.com/image/upload/c_pad,h_256,w_256,f_auto,q_auto:eco,dpr_1/v1499916638/f66jad5ksgae70vy2nod.png',
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
              '   สายด่วน\nสาธารณูปโภค',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/sunrise01.jpg',
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
