import 'package:RootOfFuture/Const/Const.dart';
import 'package:RootOfFuture/Data/data.dart';
import 'package:RootOfFuture/Data/member/memberInfo.dart';
import 'package:RootOfFuture/Mobile/widget/OrganizationChartMobile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrganizationMobile2018_2021 extends StatelessWidget {
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
          Data.barisanTitle2018_2021,
          textAlign: TextAlign.center,
          style: GoogleFonts.oregano(fontSize: 50, color: ColorPalettes.green),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 600,
          child: Column(
            children: [
              OrganizationChartMobile(Farhan.fullName, ''),
              lineMobile(),
              OrganizationChartMobile(Sallehuddin.fullName, ''),
              lineMobile(),
              OrganizationChartMobile(ShafiqFirdaus.fullName, ''),
              lineMobile(),
              OrganizationChartMobile(Ahmad.fullName, ''),
              lineMobile(),
              OrganizationChartMobile(Wan.fullName, Wan.picture),
              lineMobile(),
              CustomPaint(
                painter: LineOrganizationTwo(
                  strokeColor: ColorPalettes.whitey,
                  strokeWidth: 1.5,
                  paintingStyle: PaintingStyle.stroke,
                ),
              ),
              lineMobile(),
              Container(
                width: 447,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OrganizationChartMobile(Ameerul.fullName, ''),
                    OrganizationChartMobile(Khairul.fullName, ''),
                    OrganizationChartMobile(Amir.fullName, ''),
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

class LineOrganizationTwo extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  LineOrganizationTwo(
      {this.strokeColor = Colors.black,
      this.strokeWidth = 3,
      this.paintingStyle = PaintingStyle.stroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;
    final p1 = Offset(-130, 0);
    final p2 = Offset(130, 0);
    final p3 = Offset(130, 40);
    final p4 = Offset(130, 0);
    final p5 = Offset(-130, 40);
    final p6 = Offset(-130, 0);
    canvas.drawLine(p1, p2, paint);
    canvas.drawLine(p3, p4, paint);
    canvas.drawLine(p5, p6, paint);
  }

  @override
  bool shouldRepaint(LineOrganizationTwo oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
