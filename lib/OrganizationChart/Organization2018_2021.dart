import 'package:RootOfFuture/Const/Const.dart';
import 'package:RootOfFuture/Const/LineOrganization.dart';
import 'package:RootOfFuture/Data/data.dart';
import 'package:RootOfFuture/Data/member/memberInfo.dart';
import 'package:RootOfFuture/DesktopFullScreen/SecondPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widget_Organization.dart';

class OrganizationChartTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Data.barisanTitle2018_2021,
          style: GoogleFonts.oregano(fontSize: 80, color: ColorPalettes.green),
        ),
        SizedBox(
          height: 30,
        ),
        NameOrg(Farhan.fullName, Farhan.chairmanTitle2018_2021, ''),
        line(),
        NameOrg(Sallehuddin.fullName, Sallehuddin.chairmanTitle2018_2021, ''),
        line(),
        NameOrg(
            ShafiqFirdaus.fullName, ShafiqFirdaus.chairmanTitle2018_2021, ''),
        line(),
        NameOrg(Ahmad.fullName, Ahmad.chairmanTitle2018_2021, ''),
        line(),
        NameOrg(Wan.fullName, Wan.chairmanTitle2018_2021, Wan.picture),
        line(),
        CustomPaint(
          painter: LineOrganizationTwo(
            strokeColor: ColorPalettes.whitey,
            strokeWidth: 1.5,
            paintingStyle: PaintingStyle.stroke,
          ),
        ),
        line(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NameOrg(Ameerul.fullName, Ameerul.chairmanTitle2018_2021, ''),
            SizedBox(
              width: 30,
            ),
            NameOrg(Khairul.fullName, Khairul.chairmanTitle2018_2021, ''),
            SizedBox(
              width: 30,
            ),
            NameOrg(Amir.fullName, Amir.chairmanTitle2018_2021, ''),
          ],
        ),
      ],
    );
  }
}
