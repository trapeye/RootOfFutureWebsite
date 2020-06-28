import 'package:RootOfFuture/Const/Const.dart';
import 'package:RootOfFuture/Data/data.dart';
import 'package:RootOfFuture/Data/member/memberInfo.dart';
import 'package:RootOfFuture/Mobile/widget/OrganizationChartMobile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrganizationMobile2012_2018 extends StatelessWidget {
  Expanded lineMobile() {
    return Expanded(
      child: VerticalDivider(
        thickness: 1,
        color: ColorPalettes.whitey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Data.barisanTitle2012_2018,
          textAlign: TextAlign.center,
          style: GoogleFonts.oregano(fontSize: 40, color: ColorPalettes.green),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 600,
          child: Column(
            children: [
              OrganizationChartMobile(Zulhilmi.fullName, ''),
              lineMobile(),
              OrganizationChartMobile(Faizal.fullName, ''),
              lineMobile(),
              OrganizationChartMobile(Sallehuddin.fullName, ''),
              lineMobile(),
              OrganizationChartMobile(Ameerul.fullName, ''),
              lineMobile(),
              CustomPaint(
                painter: LineOrganizationMobileOne(
                  strokeColor: ColorPalettes.whitey,
                  strokeWidth: 1.5,
                  paintingStyle: PaintingStyle.stroke,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 400,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OrganizationChartMobile(Wan.fullName, Wan.picture),
                    OrganizationChartMobile(Farhan.fullName, ''),
                    OrganizationChartMobile(Ahmad.fullName, ''),
                    Container(
                      child: Column(
                        children: [
                          OrganizationChartMobile(ShafiqFirdaus.fullName, ''),
                          SizedBox(
                            height: 20,
                            child: VerticalDivider(
                              thickness: 1,
                              color: ColorPalettes.whitey,
                            ),
                          ),
                          OrganizationChartMobile(SurendranRao.fullName, ''),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
