import 'package:flutter/material.dart';
import 'package:flutter_application_doctor/const/doctor_const.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DoctorConst.colorWhite,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 8, right: 8),
        child: Column(
          children: [
            _home_Appbar(context),
            Padding(
              padding: const EdgeInsets.only(top: 20),
            ),
            _homeRow_tarih(context),
            Padding(
              padding: const EdgeInsets.only(top: 20),
            ),
            _containerHomeDouble(context),
            Padding(
              padding: const EdgeInsets.only(top: 40),
            ),
            _containerHomeDouble(context),
          ],
        ),
      ),
    );
  }

  Container _containerHomeDouble(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width / 1.1,
      decoration: BoxDecoration(
          color: Colors.white70, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(top: 25, left: 5, right: 8),
        child: Column(
          children: [
            Row(
              children: [
                _homeContainerMini(context),
                SizedBox(
                  width: 15,
                ),
                _doctorTextHome(context),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
            ),
            _containerRowTakvim(),
            _homeContainerCancel(context)
          ],
        ),
      ),
    );
  }

  Row _homeContainerCancel(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: MediaQuery.of(context).size.height / 18,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 10),
              child: Text(
                DoctorConst.textListCancel,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Colors.orange),
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 18,
          width: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text(
              DoctorConst.textListReschedule,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Row _containerRowTakvim() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.calendar_month)),
        Text(DoctorConst.textListCalendersixteen),
        Row(
          children: [Icon(Icons.timer_sharp), Text(DoctorConst.textNineTimeAm)],
        ),
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(15)),
        ),
        Text(DoctorConst.textListConfirmend)
      ],
    );
  }

  Text _doctorTextHome(BuildContext context) {
    return Text(
      DoctorConst.textDrSeamle,
      style:
          Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
    );
  }

  Container _homeContainerMini(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width / 5,
      decoration: BoxDecoration(
          color: Colors.white70, borderRadius: BorderRadius.circular(20)),
      child: Image.asset(DoctorConst.imageDoctorInfo),
    );
  }

  Row _homeRow_tarih(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.calendar_month),
                color: Colors.orange,
              ),
              backgroundColor: DoctorConst.colorWhite,
            ),
            Text(DoctorConst.textListCalendersixteen,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.black)),
            SizedBox(
              width: 8,
            ),
            Text(
              DoctorConst.textListCalenderTue,
            )
          ],
        ),
        Row(
          children: [
            Text(
              DoctorConst.textListRow,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.blue),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                ))
          ],
        ),
      ],
    );
  }

  Row _home_Appbar(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 100),
          child: CircleAvatar(
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_circle_left_outlined)),
            backgroundColor: Colors.white,
          ),
        ),
        Text(
          DoctorConst.textListTitle_appbar,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.blue),
        )
      ],
    );
  }
}
