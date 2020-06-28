import 'package:RootOfFuture/Const/Const.dart';
import 'package:RootOfFuture/Data/member/MemberNavigator.dart';
import 'package:RootOfFuture/Data/member/memberInfo.dart';
import 'package:RootOfFuture/DesktopFullScreen/memberScreen.dart';
import 'package:flutter/material.dart';

class NameOrg extends StatelessWidget {
  final String name;
  final String titlePosition;
  final String image;
  NameOrg(this.name, this.titlePosition, this.image);

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
    return Material(
      borderRadius: BorderRadius.circular(40),
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(40),
        onTap: () {
          navigatorProfile(context);
        },
        splashColor: Colors.greenAccent,
        hoverColor: Colors.green,
        child: Ink(
          height: 70,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]),
          // color: Colors.white,
          child: Row(
            children: [
              image == ''
                  ? CircleAvatar(
                      radius: 35,
                    )
                  : CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(image),
                    ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        titlePosition,
                        style: TextStyle(color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Expanded line() {
  return Expanded(
    child: VerticalDivider(
      thickness: 1,
      color: ColorPalettes.whitey,
    ),
  );
}
