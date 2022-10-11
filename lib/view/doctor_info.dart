import 'package:flutter/material.dart';

import 'package:flutter_application_doctor/const/doctor_const.dart';
import 'package:flutter_application_doctor/view/doctor_home.dart';

class PageInfo extends StatelessWidget {
  const PageInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                _containerInfo(context),
                _containerInfoMini(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _containerInfoMini(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: DoctorConst.colorBlue,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(240),
              bottomRight: Radius.circular(240))),
      child: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _containerInfoMiniPink(),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(DoctorConst.imageDoctorInfo),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _containerInfoMiniPink() {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: DoctorConst.colorPink,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2.0, left: 10, right: 6),
        child: Image.asset(DoctorConst.imageDoctor),
      ),
    );
  }

  Container _containerInfo(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: DoctorConst.colorWhite),
      child: Padding(
        padding: const EdgeInsets.only(top: 320, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Find a doctor near you',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: DoctorConst.colorBlack, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              DoctorConst.textinfo,
              style: Theme.of(context).textTheme.overline?.copyWith(
                  color: DoctorConst.colorGrey,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 220,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => DoctorHome()));
              },
              icon: Icon(
                Icons.arrow_circle_right_outlined,
                size: 60,
                color: DoctorConst.colorBlue,
                shadows: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 7,
                      blurStyle: BlurStyle.inner),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
