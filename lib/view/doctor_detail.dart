import 'package:flutter/material.dart';
import 'package:flutter_application_doctor/const/doctor_const.dart';
import 'package:flutter_application_doctor/widget/container_text.dart';

final double containerHeight = 1;
final double containerWidth = 1;
final double containerRowIconsHeight = 6;
final double ContainerRowIconsWidth = 1;
final double containerBookAppointmentHeight = 10;
final double containerBookAppointmentWidth = 1;
final double containerRowBookmarkText = 22;
final double containerRowBookmarkIcon = 38;
final double containerRowHeight = 100;
final double containerRowsWidth = 100;
final double fontSize16 = 16;
final double fontSize20 = 20;
final double fontSize22 = 22;
final double fontSize18 = 18;

class DoctorDetail extends StatelessWidget {
  const DoctorDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DoctorConst.colorBlue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 60, left: 8, right: 8, bottom: 53),
              child: _RowDetailAppbar(context),
            ),
            Container(
              height: MediaQuery.of(context).size.height / containerHeight,
              width: MediaQuery.of(context).size.width / containerWidth,
              decoration: BoxDecoration(
                  color: DoctorConst.colorWhite,
                  borderRadius: DoctorConst.topBorderRadius50),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 25, right: 15),
                child: Column(
                  children: [
                    _ContainerRowIcons(context),
                    Padding(padding: DoctorConst.paddingTop20),
                    Container(
                      height: MediaQuery.of(context).size.height /
                          containerRowIconsHeight,
                      width: MediaQuery.of(context).size.width /
                          ContainerRowIconsWidth,
                      decoration: BoxDecoration(
                        color: DoctorConst.colorWhite,
                        borderRadius: DoctorConst.borderRadiusCircular15,
                        border:
                            Border.all(width: 3, color: DoctorConst.colorBlue),
                        boxShadow: [BoxShadow(blurRadius: 10)],
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 15, right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _ContainerPeopleText(context),
                            _ContainerPersonText(context),
                            _ContainerMessageText(context),
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: DoctorConst.paddingTop15),
                    _RowContainerTitle(context),
                    Padding(padding: DoctorConst.paddingTop15),
                    _TextDetailInfo(context),
                    Padding(padding: DoctorConst.paddingTop15),
                    _RowTimeTitle(context),
                    Padding(padding: DoctorConst.paddingTop10),
                    _DetailTime(),
                    Padding(padding: DoctorConst.paddingTop25),
                    _MakeApp(context),
                    Padding(padding: DoctorConst.paddingTop10),
                    _singleChildScrollContainerDays(),
                    Padding(padding: DoctorConst.paddingTop25),
                    _containerBookAppointment(context)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _containerBookAppointment(BuildContext context) {
    return Container(
      height:
          MediaQuery.of(context).size.height / containerBookAppointmentHeight,
      width: MediaQuery.of(context).size.width / containerBookAppointmentWidth,
      decoration: BoxDecoration(
        color: DoctorConst.colorPink,
        borderRadius: DoctorConst.borderRadiusCircular40,
        border: Border.all(width: 3, color: DoctorConst.colorWhite),
        boxShadow: [BoxShadow(blurRadius: 10)],
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            colors: [DoctorConst.colorPurple, DoctorConst.colorBlues]),
      ),
      child: _ContainerRowBookmark(context),
    );
  }

  SingleChildScrollView _singleChildScrollContainerDays() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ContainerText(title: DoctorConst.textDetaiContainerCalendarMon),
          DoctorConst.sizedBoxWidht10,
          ContainerText(title: DoctorConst.textDetaiContainerCalendarTue),
          DoctorConst.sizedBoxWidht10,
          ContainerText(title: DoctorConst.textDetaiContainerCalendarWed),
          DoctorConst.sizedBoxWidht10,
          ContainerText(title: DoctorConst.textDetaiContainerCalendarThu),
          DoctorConst.sizedBoxWidht10,
          ContainerText(title: DoctorConst.textDetaiContainerCalendarFri),
        ],
      ),
    );
  }

  Row _ContainerRowBookmark(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.bookmark_outlined,
          color: DoctorConst.colorWhite,
          size: 38,
        ),
        Text(
          DoctorConst.textDetailBookApp,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorConst.colorWhite,
              fontWeight: FontWeight.w400,
              fontSize: fontSize22),
        ),
      ],
    );
  }

  Column _ContainerMessageText(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: DoctorConst.colorsari,
          child: Icon(
            Icons.message,
            color: DoctorConst.colorAmber,
          ),
        ),
        Padding(padding: DoctorConst.paddingTop10),
        Text(
          DoctorConst.textDetailRating,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorConst.colorGrey,
              fontWeight: FontWeight.w400,
              fontSize: fontSize16),
        ),
        Padding(padding: DoctorConst.paddingTop10),
        Text(
          DoctorConst.textDetailPuanlama,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorConst.colorAmber,
              fontWeight: FontWeight.w600,
              fontSize: fontSize22),
        ),
      ],
    );
  }

  Column _ContainerPersonText(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: DoctorConst.colorgri,
          child: Icon(
            Icons.person,
            color: DoctorConst.colorBlue,
          ),
        ),
        Padding(padding: DoctorConst.paddingTop10),
        Text(
          DoctorConst.textDetailExperience,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorConst.colorGrey,
              fontWeight: FontWeight.w400,
              fontSize: fontSize16),
        ),
        Padding(padding: DoctorConst.paddingTop10),
        Text(
          DoctorConst.textDetailFiveYears,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorConst.colorBlue,
              fontWeight: FontWeight.w600,
              fontSize: fontSize18),
        ),
      ],
    );
  }

  Column _ContainerPeopleText(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: DoctorConst.colorgri,
          child: Icon(
            Icons.people,
            color: DoctorConst.colorBlue,
          ),
        ),
        Padding(padding: DoctorConst.paddingTop10),
        Text(
          DoctorConst.textDetailPatients,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorConst.colorGrey,
              fontWeight: FontWeight.w400,
              fontSize: fontSize16),
        ),
        Padding(padding: DoctorConst.paddingTop10),
        Text(
          DoctorConst.textDetailOneK,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorConst.colorBlue,
              fontWeight: FontWeight.w600,
              fontSize: fontSize18),
        ),
      ],
    );
  }

  Row _MakeApp(BuildContext context) {
    return Row(
      children: [
        DoctorConst.sizedBoxWidht5,
        Text(
          DoctorConst.textDetailMakeApp,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorConst.colorBlack,
              fontWeight: FontWeight.w600,
              fontSize: fontSize16),
        ),
      ],
    );
  }

  Row _DetailTime() {
    return Row(
      children: [
        DoctorConst.sizedBoxWidht5,
        Text(DoctorConst.textNineTimeAm),
      ],
    );
  }

  Row _RowTimeTitle(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.timelapse,
          color: DoctorConst.colorBlue,
        ),
        DoctorConst.sizedBoxWidht5,
        Text(
          DoctorConst.textDetailRowTimeTitle,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorConst.colorBlack,
              fontWeight: FontWeight.w600,
              fontSize: fontSize16),
        )
      ],
    );
  }

  Text _TextDetailInfo(BuildContext context) {
    return Text(
      DoctorConst.TextDetailInfo,
      style: Theme.of(context).textTheme.headline5?.copyWith(
          color: DoctorConst.colorGrey,
          fontWeight: FontWeight.w400,
          fontSize: fontSize16),
    );
  }

  Row _RowContainerTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          DoctorConst.textAboutDoctor,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorConst.colorBlack,
              fontWeight: FontWeight.w600,
              fontSize: fontSize20),
        ),
        Text(
          DoctorConst.textSeeReviews,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorConst.colorBlue,
              fontWeight: FontWeight.w600,
              fontSize: fontSize20),
        )
      ],
    );
  }

  Row _ContainerRowIcons(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / containerRowHeight,
          width: MediaQuery.of(context).size.height / containerRowsWidth,
          decoration: BoxDecoration(
              color: DoctorConst.colorBlues,
              borderRadius: DoctorConst.borderRadiusCircular40),
          child: Image.asset(DoctorConst.imageDoctor),
        ),
        Padding(padding: DoctorConst.paddingLeft15),
        Column(
          children: [
            Text(
              DoctorConst.textDrSeamle,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: DoctorConst.colorBlack, fontWeight: FontWeight.w600),
            ),
            Padding(padding: DoctorConst.paddingLeft15),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: DoctorConst.colorBlues,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                ),
                Padding(padding: DoctorConst.paddingLeft25),
                CircleAvatar(
                  backgroundColor: DoctorConst.colorGrey,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.videocam,
                        color: DoctorConst.colorRed,
                      )),
                ),
                DoctorConst.sizedBoxwidht30,
                CircleAvatar(
                  backgroundColor: DoctorConst.colorgri,
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.message_sharp)),
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  Row _RowDetailAppbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.chevron_left_sharp),
          color: DoctorConst.colorWhite,
        ),
        Text(
          DoctorConst.textDoctorDetails,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorConst.colorWhite, fontWeight: FontWeight.w600),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.list_outlined,
              color: DoctorConst.colorWhite,
            ))
      ],
    );
  }
}
