import 'package:flutter/material.dart';
import 'package:thai_hotline_app/subviews/sub_a_home_ui.dart';
import 'package:thai_hotline_app/subviews/sub_b_home_ui.dart';
import 'package:thai_hotline_app/subviews/sub_c_home_ui.dart';
import 'package:thai_hotline_app/subviews/sub_c_introduction_call_ui.dart';
import 'package:thai_hotline_app/subviews/sub_d_home_ui.dart';
import 'package:thai_hotline_app/views/about_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  int index = 0;

  List showPage = [
    const SubAHomeUi(),
    const SubBHomeUi(),
    const SubCHomeUi(),
    const SubDHomeUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 232, 246),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 142, 150, 207),
        title: Text(
          'สายด่วน THAILAND',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.info,
              color: Colors.grey,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutUi(),
              ),
            ),
          ),
        ],
      ),
      body: showPage[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() => index = value),
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 192, 196, 221),
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/passport01.jpg',
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
            label: 'การเดินทาง',
          ),
          BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/police01.jpg',
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
            label: 'อุบัติเหตุ',
          ),
          BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/bank01.jpg',
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
            label: 'ธนาคาร',
          ),
          BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/sunrise01.jpg',
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
            label: 'สาธารณูปโภค',
          ),
        ],
      ),
    );
  }
}
