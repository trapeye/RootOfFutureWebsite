import 'package:RootOfFuture/Const/Const.dart';
import 'package:RootOfFuture/Data/data.dart';
import 'package:RootOfFuture/DesktopFullScreen/ThirdPage.dart';
import 'package:flutter/material.dart';

class MobileThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                LinkSocialAccountMobile(),
              ],
            ),
          ),
        ));
  }
}

class LinkSocialAccountMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: buttonSocialIcon(Assets.facebook, Const.PROFILE_FACEBOOK,
              'Root Of Future facebook'),
        ),
        Expanded(
          child: buttonSocialIcon(
              Assets.medium, Const.PROFILE_MEDIUM, 'Root Of Future medium'),
        ),
        Expanded(
          child: buttonSocialIcon(
              Assets.twitter, Const.PROFILE_TWITTER, 'Root Of Future twitter'),
        ),
        Expanded(
          child: buttonSocialIcon(Assets.instagram, Const.PROFILE_INSTAGRAM,
              'Root Of Future instagram'),
        ),
        Expanded(
          child: buttonSocialIcon(Assets.linkedin, Const.PROFILE_LINKEDIN,
              'Root Of Future linkedin'),
        ),
      ],
    );
  }
}
