import 'package:RootOfFuture/Data/data.dart';
import 'package:RootOfFuture/Data/member/MemberNavigator.dart';
import 'package:RootOfFuture/Data/member/memberInfo.dart';
import 'package:flutter/material.dart';

class OrganizationChartMobile extends StatelessWidget {
  final String name;

  final String image;
  OrganizationChartMobile(this.name, this.image);

  void navigatorProfile(context) {
    String profileName = name;
    switch (profileName) {
      case Wan.fullName:
        {
          Navigator.of(context).pushNamed(
            ProfileWan.route,
          );
        }
        break;

      case Farhan.fullName:
        {
          Navigator.of(context).pushNamed(
            ProfileFarhan.route,
          );
        }
        break;

      case Zulhilmi.fullName:
        {
          Navigator.of(context).pushNamed(
            ProfileZulhilmi.route,
          );
        }
        break;

      case Faizal.fullName:
        {
          Navigator.of(context).pushNamed(
            ProfileFaizal.route,
          );
        }
        break;

      case Sallehuddin.fullName:
        {
          Navigator.of(context).pushNamed(
            ProfileSallehuddin.route,
          );
        }
        break;

      case Ameerul.fullName:
        {
          Navigator.of(context).pushNamed(
            ProfileAmeerul.route,
          );
        }
        break;

      case Ahmad.fullName:
        {
          Navigator.of(context).pushNamed(
            ProfileAhmad.route,
          );
        }
        break;

      case ShafiqFirdaus.fullName:
        {
          Navigator.of(context).pushNamed(
            ProfileShafiqFirdaus.route,
          );
        }
        break;

      case SurendranRao.fullName:
        {
          Navigator.of(context).pushNamed(
            ProfileSurrendranRao.route,
          );
        }
        break;

      case Amir.fullName:
        {
          Navigator.of(context).pushNamed(
            ProfileAmir.route,
          );
        }
        break;

      case Khairul.fullName:
        {
          Navigator.of(context).pushNamed(
            ProfileKhairul.route,
          );
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundImage:
          image == '' ? AssetImage(Picture.logorof) : AssetImage(image),
      child: ClipOval(
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            splashColor: Color(0xFF38f689),
            hoverColor: Color(0x4D7fffd4),
            child: SizedBox(
              height: 90,
              width: 90,
            ),
            onTap: () {
              navigatorProfile(context);
            },
          ),
        ),
      ),
    );
  }
}

class LineOrganizationMobileOne extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  LineOrganizationMobileOne(
      {this.strokeColor = Colors.black,
      this.strokeWidth = 3,
      this.paintingStyle = PaintingStyle.stroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;
    final p1 = Offset(-143, 0);
    final p2 = Offset(143, 0);

    //right
    final p3 = Offset(143, 30);
    final p4 = Offset(143, 0);

    //left
    final p5 = Offset(-143, 30);
    final p6 = Offset(-143, 0);

    //center left line
    final p7 = Offset(-45, 30);
    final p8 = Offset(-45, 0);

    //center right line
    final p9 = Offset(45, 30);
    final p10 = Offset(45, 0);

    canvas.drawLine(p1, p2, paint);

    //right Line
    canvas.drawLine(p3, p4, paint);

    //left Line
    canvas.drawLine(p5, p6, paint);

    //center left line
    canvas.drawLine(p7, p8, paint);

    //center right line
    canvas.drawLine(p9, p10, paint);
  }

  @override
  bool shouldRepaint(LineOrganizationMobileOne oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
