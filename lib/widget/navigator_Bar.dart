import 'package:flutter/material.dart';
import 'package:flutter_application_doctor/const/doctor_const.dart';

class navigatorBarLearnView extends StatefulWidget {
  const navigatorBarLearnView({super.key});

  @override
  State<navigatorBarLearnView> createState() => _navigatorBarLearnViewState();
}

class _navigatorBarLearnViewState extends State<navigatorBarLearnView> {
  int _selectedIndex = 0;

  List<Widget> _bottomList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedItemColor: DoctorConst.colorBlue,
        unselectedItemColor: DoctorConst.colorgri,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.list_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: _bottomList.elementAt(_selectedIndex),
    );
  }
}
