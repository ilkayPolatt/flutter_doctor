import 'package:flutter/material.dart';
import 'package:flutter_application_doctor/view/doctor_List.dart';
import 'package:flutter_application_doctor/view/doctor_detail.dart';
import 'package:flutter_application_doctor/view/doctor_home.dart';
import 'package:flutter_application_doctor/view/doctor_info.dart';

import 'package:flutter_application_doctor/widget/navigator_Bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const PageInfo(),
    );
  }
}
