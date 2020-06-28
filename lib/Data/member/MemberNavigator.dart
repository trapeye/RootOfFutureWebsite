import 'package:RootOfFuture/DesktopFullScreen/memberScreen.dart';
import 'package:flutter/material.dart';

import 'memberInfo.dart';

class ProfileWan extends StatelessWidget {
  static const String route = 'wan';
  @override
  Widget build(BuildContext context) {
    return MemberScreen(Wan.fullName, Wan.nickName, Wan.picture);
  }
}

class ProfileFarhan extends StatelessWidget {
  static const String route = 'farhan';
  @override
  Widget build(BuildContext context) {
    return MemberScreen(Farhan.fullName, Farhan.nickName, Farhan.picture);
  }
}

class ProfileZulhilmi extends StatelessWidget {
  static const String route = 'zul';
  @override
  Widget build(BuildContext context) {
    return MemberScreen(Zulhilmi.fullName, Zulhilmi.nickName, Zulhilmi.picture);
  }
}

class ProfileFaizal extends StatelessWidget {
  static const String route = 'faizal';
  @override
  Widget build(BuildContext context) {
    return MemberScreen(Faizal.fullName, Faizal.nickName, Faizal.picture);
  }
}

class ProfileSallehuddin extends StatelessWidget {
  static const String route = 'salleh';
  @override
  Widget build(BuildContext context) {
    return MemberScreen(
        Sallehuddin.fullName, Sallehuddin.nickName, Sallehuddin.picture);
  }
}

class ProfileAmeerul extends StatelessWidget {
  static const String route = 'ameerul';
  @override
  Widget build(BuildContext context) {
    return MemberScreen(Ameerul.fullName, Ameerul.nickName, Ameerul.picture);
  }
}

class ProfileAhmad extends StatelessWidget {
  static const String route = 'ahmad';
  @override
  Widget build(BuildContext context) {
    return MemberScreen(Ahmad.fullName, Ahmad.nickName, Ahmad.picture);
  }
}

class ProfileShafiqFirdaus extends StatelessWidget {
  static const String route = 'ShafiqFirdaus';
  @override
  Widget build(BuildContext context) {
    return MemberScreen(
        ShafiqFirdaus.fullName, ShafiqFirdaus.nickName, ShafiqFirdaus.picture);
  }
}

class ProfileSurrendranRao extends StatelessWidget {
  static const String route = 'surrendran';
  @override
  Widget build(BuildContext context) {
    return MemberScreen(
        SurendranRao.fullName, SurendranRao.nickName, SurendranRao.picture);
  }
}

class ProfileAmir extends StatelessWidget {
  static const String route = 'amir';
  @override
  Widget build(BuildContext context) {
    return MemberScreen(Amir.fullName, Amir.nickName, Amir.picture);
  }
}

class ProfileKhairul extends StatelessWidget {
  static const String route = 'khai';
  @override
  Widget build(BuildContext context) {
    return MemberScreen(Khairul.fullName, Khairul.nickName, Khairul.picture);
  }
}
