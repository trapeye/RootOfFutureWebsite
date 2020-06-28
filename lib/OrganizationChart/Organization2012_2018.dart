import 'package:RootOfFuture/Const/Const.dart';
import 'package:RootOfFuture/Const/LineOrganization.dart';
import 'package:RootOfFuture/Data/data.dart';
import 'package:RootOfFuture/Data/member/memberInfo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widget_Organization.dart';

class OrganizationChartOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Data.barisanTitle2012_2018,
            style:
                GoogleFonts.oregano(fontSize: 80, color: ColorPalettes.green),
          ),
          SizedBox(
            height: 30,
          ),
          NameOrg(Zulhilmi.fullName, Zulhilmi.chairmanTitle2012_2018, ''),
          line(),
          NameOrg(Faizal.fullName, Faizal.chairmanTitle2012_2018, ''),
          line(),
          NameOrg(Sallehuddin.fullName, Sallehuddin.chairmanTitle2012_2018, ''),
          line(),
          NameOrg(Ameerul.fullName, Ameerul.chairmanTitle2012_2018, ''),
          line(),
          CustomPaint(
            painter: LineOrganizationOne(
              strokeColor: ColorPalettes.whitey,
              strokeWidth: 1.5,
              paintingStyle: PaintingStyle.stroke,
            ),
          ),
          Expanded(child: SizedBox()),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NameOrg(Wan.fullName, Wan.chairmanTitle2012_2018, Wan.picture),
                SizedBox(
                  width: 30,
                ),
                NameOrg(Farhan.fullName, Farhan.chairmanTitle2012_2018, ''),
                SizedBox(
                  width: 30,
                ),
                NameOrg(Ahmad.fullName, Ahmad.chairmanTitle2012_2018, ''),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    NameOrg(ShafiqFirdaus.fullName,
                        ShafiqFirdaus.chairmanTitle2012_2018, ''),
                    SizedBox(
                      height: 20,
                      child: VerticalDivider(
                        thickness: 1,
                        color: ColorPalettes.whitey,
                      ),
                    ),
                    NameOrg(SurendranRao.fullName,
                        SurendranRao.chairmanTitle2012_2018, ''),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
