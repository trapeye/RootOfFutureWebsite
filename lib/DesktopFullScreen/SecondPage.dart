import 'package:RootOfFuture/Const/Const.dart';
import 'package:RootOfFuture/Const/LineOrganization.dart';
import 'package:RootOfFuture/Data/data.dart';
import 'package:RootOfFuture/Data/member/memberInfo.dart';
import 'package:RootOfFuture/OrganizationChart/Organization2012_2018.dart';
import 'package:RootOfFuture/OrganizationChart/Organization2018_2021.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String yearsOrganization = '2018 - 2021';

  Widget organizationChart() {
    switch (yearsOrganization) {
      case '2012 - 2018':
        {
          return OrganizationChartOne();
        }
        break;

      case '2018 - 2021':
        {
          return OrganizationChartTwo();
        }
        break;
    }

    return null;
  }

  Widget beforePress(String year) {
    return Container(
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(9),
        shadowColor: Color(0xff94db00),
        elevation: 10.0,
        child: InkWell(
          onTap: () {
            setState(() {
              yearsOrganization = year;
            });
          },
          borderRadius: BorderRadius.circular(9),
          splashColor: Color(0xffbaf73c),
          hoverColor: Color(0xff94db00),
          child: Ink(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
            child: Text(
              year,
              style: GoogleFonts.merienda(
                  fontSize: 30, color: ColorPalettes.black),
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
          color: Color(0xffbaf73c),
          borderRadius: BorderRadius.circular(9),
          border: Border.all(color: Colors.white70),
          boxShadow: [
            BoxShadow(
              color: Color(0xff94db00).withOpacity(0.5),
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
    );
  }

  Widget afterPress(String year) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
      decoration: BoxDecoration(
        color: Color(0xff94db00),
        borderRadius: BorderRadius.circular(9),
        border: Border.all(color: Colors.white10),
      ),
      child: Text(
        year,
        style: GoogleFonts.merienda(fontSize: 30, color: ColorPalettes.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Background(),
          Padding(
            padding: const EdgeInsets.only(top: 130, bottom: 50),
            child: organizationChart(),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  child: yearsOrganization == '2012 - 2018'
                      ? afterPress('2012 - 2018')
                      : beforePress('2012 - 2018'),
                  padding: EdgeInsets.only(right: 140),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 140),
                  child: yearsOrganization == '2018 - 2021'
                      ? afterPress('2018 - 2021')
                      : beforePress('2018 - 2021'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            alignment: FractionalOffset.topCenter,
            image: AssetImage(ImageBackground.secondScreenBg),
            fit: BoxFit.cover),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(0.01, 0.4),
              end: Alignment.topRight,
              colors: [
                Color.fromRGBO(1, 1, 1, 0.9),
                Color.fromRGBO(1, 1, 1, 0.2),
              ]),
        ),
      ),
    );
  }
}
