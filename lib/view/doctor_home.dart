import 'package:flutter/material.dart';
import 'package:flutter_application_doctor/const/doctor_const.dart';
import 'package:flutter_application_doctor/widget/container_home.dart';

final double containerHomeTextPhotoHeight = 4;
final double containerHomeTextPhotoWidth = 2.2;
final double containerAppbarHeight = 230;
final double containerAppbarWidth = 400;
final double rowContainerImageDoctorUserHeight = 50;
final double rowContainerImageDoctorUserWidth = 50;
final double fontSize15 = 15;
final double fontSize18 = 18;

class DoctorHome extends StatelessWidget {
  const DoctorHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _containerAppbar(context),
            Padding(padding: DoctorConst.paddingTop15),
            _containerHomeTextPhoto(context),
            Padding(padding: DoctorConst.paddingTop15),
            Padding(
              padding: DoctorConst.paddingAlls10,
              child: _containerMini(),
            ),
            DoctorConst.sizedBoxHeigt10,
            Padding(
              padding: DoctorConst.paddingLeft15,
              child: _containerMiniTextTitle(context),
            ),
            Padding(padding: DoctorConst.paddingTop10),
            Padding(
              padding: DoctorConst.paddingLeft15,
              child: _rowTopRated(context),
            ),
            DoctorConst.sizedBoxHeigt20,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: DoctorConst.paddingAlls12,
                child: Row(
                  children: [
                    ContainerHome(
                        title: DoctorConst.textHomeContainerDrTitleJohn,
                        imageassets: DoctorConst.imageDoctor),
                    DoctorConst.sizedBoxWidht10,
                    ContainerHome(
                        title: DoctorConst.textHomeContainerDrTitleJohn,
                        imageassets: DoctorConst.imageDoctorThree),
                    DoctorConst.sizedBoxWidht10,
                    ContainerHome(
                        title: DoctorConst.textHomeContainerDrTitleJohn,
                        imageassets: DoctorConst.imageDoctor)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _rowTopRated(BuildContext context) {
    return Row(
      children: [
        Text(DoctorConst.textTopRatedDoctors,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: DoctorConst.colorRed)),
      ],
    );
  }

  Row _containerMiniTextTitle(BuildContext context) {
    return Row(
      children: [
        Text(DoctorConst.textDoctors,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: DoctorConst.colorBlack)),
        DoctorConst.sizedBoxwidht30,
        Text(DoctorConst.textLabs,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: DoctorConst.colorBlack)),
        DoctorConst.sizedBoxwidht20,
        Text(DoctorConst.textAmbulance,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: DoctorConst.colorBlack)),
        DoctorConst.sizedBoxwidht20,
        Text(DoctorConst.textPharms,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: DoctorConst.colorBlack)),
      ],
    );
  }

  Row _containerMini() {
    return Row(
      children: [
        Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: DoctorConst.colorBlue,
                borderRadius: DoctorConst.borderRadiusCircular15),
            child: Image.asset(DoctorConst.imageSteteskop)),
        DoctorConst.sizedBoxWidht15,
        Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: DoctorConst.colorGrey,
                borderRadius: DoctorConst.borderRadiusCircular15),
            child: Image.asset(DoctorConst.imageDeneyTupu)),
        DoctorConst.sizedBoxWidht15,
        Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: DoctorConst.colorRed,
                borderRadius: DoctorConst.borderRadiusCircular15),
            child: Image.asset(DoctorConst.imageAmbulans)),
        DoctorConst.sizedBoxWidht15,
        Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: DoctorConst.colorBlues,
                borderRadius: DoctorConst.borderRadiusCircular15),
            child: Image.asset(DoctorConst.imageEczane)),
      ],
    );
  }

  Container _containerHomeTextPhoto(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / containerHomeTextPhotoHeight,
      width: MediaQuery.of(context).size.width / containerHomeTextPhotoWidth,
      decoration: BoxDecoration(
        color: DoctorConst.colorgri,
        borderRadius: DoctorConst.borderRadiusCircular15,
        boxShadow: [BoxShadow(blurRadius: 10)],
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            colors: [Colors.purple, Colors.blueGrey]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: DoctorConst.paddingTopRightLeft10,
            child: Column(
              children: [
                _textContainerTitle(context),
                DoctorConst.sizedBoxHeigt20,
                _textContainerExplanation(context),
                DoctorConst.sizedBoxHeigt20,
                _ContainerTextLearnMore(context),
              ],
            ),
          ),
          Expanded(child: Image.asset(DoctorConst.imageDoctor))
        ],
      ),
    );
  }

  Container _ContainerTextLearnMore(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / containerAppbarHeight,
      width: MediaQuery.of(context).size.width / containerAppbarWidth,
      decoration: BoxDecoration(
          color: DoctorConst.colorBlues,
          borderRadius: DoctorConst.borderRadiusCircular15),
      child: Center(
        child: Text(DoctorConst.textLearnMore,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: DoctorConst.colorWhite)),
      ),
    );
  }

  Text _textContainerExplanation(BuildContext context) {
    return Text(DoctorConst.textcontainerexplanation,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: DoctorConst.colorWhite, fontSize: fontSize15));
  }

  Text _textContainerTitle(BuildContext context) {
    return Text(
      DoctorConst.textContainerTitle,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: DoctorConst.colorWhite, fontSize: fontSize18),
    );
  }

  Container _containerAppbar(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / containerAppbarHeight,
      width: MediaQuery.of(context).size.width / containerAppbarWidth,
      decoration: BoxDecoration(
          color: DoctorConst.colorBlue,
          borderRadius: DoctorConst.bottomBorderRadius50),
      child: Padding(
        padding: DoctorConst.paddingTop25RightLeft8,
        child: Column(
          children: [
            _rowAppbar(context),
            DoctorConst.sizedBoxHeigt30,
            _TextFieldSearch(),
          ],
        ),
      ),
    );
  }

  Row _rowAppbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_rowContainerImageDoctorUser(context), _circleAvatarIconAdd()],
    );
  }

  CircleAvatar _circleAvatarIconAdd() {
    return CircleAvatar(
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add_alert_rounded,
            color: DoctorConst.colorWhite,
          )),
    );
  }

  Row _rowContainerImageDoctorUser(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height /
              rowContainerImageDoctorUserHeight,
          width: MediaQuery.of(context).size.width /
              rowContainerImageDoctorUserWidth,
          decoration: BoxDecoration(
            color: DoctorConst.colorGrey,
            borderRadius: DoctorConst.borderRadiusCircular20,
          ),
          child: Image.asset(DoctorConst.imageDoctorUser),
        ),
        DoctorConst.sizedBoxWidht15,
        Text(
          DoctorConst.textHomeAppbarTitle,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: DoctorConst.colorBlack),
        )
      ],
    );
  }

  TextField _TextFieldSearch() {
    return TextField(
        decoration: InputDecoration(
      fillColor: DoctorConst.colorWhite,
      labelStyle: TextStyle(color: DoctorConst.colorWhite),
      filled: true,
      hoverColor: DoctorConst.colorWhite,
      border:
          OutlineInputBorder(borderRadius: DoctorConst.borderRadiusCircular40),
      prefixIcon: Icon(
        Icons.search,
        color: DoctorConst.colorGrey,
      ),
      hintText: DoctorConst.textHomeSearch,
      hintStyle: TextStyle(color: DoctorConst.colorGrey),
    ));
  }
}
