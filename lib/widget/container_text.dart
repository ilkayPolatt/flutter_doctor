import 'package:flutter/material.dart';

import '../const/doctor_const.dart';

class ContainerText extends StatelessWidget {
  const ContainerText({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width / 5,
      decoration: BoxDecoration(
        color: DoctorConst.colorWhite,
        borderRadius: DoctorConst.borderRadiusCircular15,
        border: Border.all(width: 3, color: DoctorConst.colorBlue),
      ),
      child: Center(
          child: Text(
        title,
        style: Theme.of(context).textTheme.headline5?.copyWith(
            color: DoctorConst.colorBlue,
            fontWeight: FontWeight.w600,
            fontSize: 20),
      )),
    );
  }
}
