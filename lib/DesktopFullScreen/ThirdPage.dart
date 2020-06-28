import 'package:RootOfFuture/Const/Const.dart';
import 'package:RootOfFuture/Data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:google_fonts/google_fonts.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          BackgroundScreen3(),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 800,
                  width: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      LinkSocialAccount(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 140, top: 120),
                  child: Container(
                      height: 820,
                      width: 750,
                      decoration: BoxDecoration(
                        color: Color(0xAA5D5D5D),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: NotificationListener<ScrollNotification>(
                            onNotification: (_) => true,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  title(Data.sejarahTitle),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  description(Data.sejarahDescription),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  title(Data.keahlianTitle),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  description(Data.keahlianDescription),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget title(String title) {
  return Text(
    title,
    textAlign: TextAlign.center,
    style: GoogleFonts.pangolin(
      color: ColorPalettes.green,
      fontSize: 35,
    ),
  );
}

Widget description(String description) {
  return Text(
    description,
    textAlign: TextAlign.justify,
    style: GoogleFonts.patrickHand(
      color: ColorPalettes.greenLight,
      fontSize: 23,
    ),
  );
}

class BackgroundScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            alignment: FractionalOffset.topCenter,
            image: AssetImage(ImageBackground.thirdScreenBg),
            fit: BoxFit.cover),
      ),
    );
  }
}

class LinkSocialAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        buttonSocialIcon(
            Assets.facebook, Const.PROFILE_FACEBOOK, 'Root Of Future facebook'),
        SizedBox(
          width: 10,
        ),
        buttonSocialIcon(
            Assets.medium, Const.PROFILE_MEDIUM, 'Root Of Future medium'),
        SizedBox(
          width: 10,
        ),
        buttonSocialIcon(
            Assets.twitter, Const.PROFILE_TWITTER, 'Root Of Future twitter'),
        SizedBox(
          width: 10,
        ),
        buttonSocialIcon(Assets.instagram, Const.PROFILE_INSTAGRAM,
            'Root Of Future instagram'),
        SizedBox(
          width: 10,
        ),
        buttonSocialIcon(
            Assets.linkedin, Const.PROFILE_LINKEDIN, 'Root Of Future linkedin'),
      ],
    );
  }
}

Widget buttonSocialIcon(String image, String url, String description) {
  return IconButton(
    icon: SizedBox(width: 100, height: 100, child: Image.asset(image)),
    iconSize: 60,
    onPressed: () => html.window.open(url, description),
  );
}
