import 'package:RootOfFuture/Const/Const.dart';
import 'package:RootOfFuture/Mobile/MobileFirstPage.dart';
import 'package:flutter/material.dart';

import 'MobileSecondPage.dart';
import 'MobileThirdPage.dart';

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Scrollbar(
        child: ListView(
          children: [
            BgMobile(
              ImageBackground.firstScreenBg,
              MobileFirstPage(),
            ),
            BgMobile(
              ImageBackground.secondScreenBg,
              MobileSecondPage(),
            ),
            BgMobile(
              ImageBackground.thirdScreenBg,
              MobileThirdPage(),
            ),
          ],
        ),
      ),
    );
  }
}

class BgMobile extends StatelessWidget {
  final Widget child;
  final String image;
  BgMobile(this.image, this.child);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            alignment: FractionalOffset.topCenter,
            image: AssetImage(image),
            fit: BoxFit.cover),
      ),
      child: Container(
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
        child: child,
      ),
    );
  }
}
