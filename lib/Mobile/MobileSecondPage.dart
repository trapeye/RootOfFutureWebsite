import 'package:RootOfFuture/Const/Const.dart';
import 'package:RootOfFuture/Data/data.dart';
import 'package:RootOfFuture/Data/member/memberInfo.dart';
import 'package:RootOfFuture/Mobile/OrginzationChart/OrganizationMobile2012_2018.dart';
import 'package:RootOfFuture/Mobile/widget/OrganizationChartMobile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'OrginzationChart/OrganizationMobile2018_2021.dart';

class MobileSecondPage extends StatefulWidget {
  @override
  _MobileSecondPageState createState() => _MobileSecondPageState();
}

class _MobileSecondPageState extends State<MobileSecondPage> {
  String yearsOrganization = '2018 - 2021';

  Widget organizationChartMobile() {
    switch (yearsOrganization) {
      case '2012 - 2018':
        {
          return OrganizationMobile2012_2018();
        }
        break;

      case '2018 - 2021':
        {
          return OrganizationMobile2018_2021();
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
                  fontSize: 20, color: ColorPalettes.black),
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
        style: GoogleFonts.merienda(fontSize: 20, color: ColorPalettes.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 700,
              width: 700,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    yearsOrganization == '2012 - 2018'
                        ? afterPress('2012 - 2018')
                        : beforePress('2012 - 2018'),
                    yearsOrganization == '2018 - 2021'
                        ? afterPress('2018 - 2021')
                        : beforePress('2018 - 2021'),
                  ],
                ),
              ),
            ),
            organizationChartMobile(),
          ],
        ));
  }
}
