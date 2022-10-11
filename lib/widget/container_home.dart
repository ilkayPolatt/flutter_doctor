import 'dart:developer';

import 'package:flutter/material.dart';
import '../const/doctor_const.dart';

final double fonSize20 = 20;
final double ContainerHeight3_5 = 3.5;
final double ContainerHeight8 = 8;
final double ContainerWidth2_3 = 2.3;

class ContainerHome extends StatelessWidget {
  const ContainerHome(
      {super.key, required this.title, required this.imageassets});

  final String title;
  final String imageassets;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / ContainerHeight3_5,
        width: MediaQuery.of(context).size.width / ContainerWidth2_3,
        decoration: BoxDecoration(
          color: DoctorConst.colorgri,
          borderRadius: DoctorConst.borderRadiusCircular20,
        ),
        child: Stack(
          children: [
            Image.asset(imageassets),
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / ContainerHeight8,
                width: MediaQuery.of(context).size.width / ContainerWidth2_3,
                decoration: BoxDecoration(
                    color: DoctorConst.colorStackContainer,
                    borderRadius: DoctorConst.borderRadiusCircular20),
              ),
            ),
            Positioned(left: 35, bottom: 75, child: _rowCircleAvatar()),
            Positioned(
              bottom: 20,
              left: 15,
              child: Text(title,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: DoctorConst.colorBlue,
                      fontWeight: FontWeight.w600,
                      fontSize: fonSize20)),
            ),
          ],
        ));
  }

  Row _rowCircleAvatar() {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: DoctorConst.colorWhite,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.video_camera_front,
                color: DoctorConst.colorBlue,
              )),
        ),
        Padding(padding: DoctorConst.paddingRight15),
        CircleAvatar(
          backgroundColor: DoctorConst.colorWhite,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_rounded,
                color: DoctorConst.colororange,
              )),
        ),
      ],
    );
  }
}
