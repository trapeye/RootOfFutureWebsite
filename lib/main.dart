import 'package:RootOfFuture/DesktopFullScreen/memberScreen.dart';
import 'package:RootOfFuture/Mobile/Mobile.dart';
import 'package:flutter/material.dart';
import 'Const/Const.dart';
import 'Data/member/MemberNavigator.dart';
import 'DesktopFullScreen/Desktop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: Scrolling(),
          child: child,
        );
      },
      title: 'Root Of Future',
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: ColorPalettes.whitey,
              displayColor: ColorPalettes.whitey,
            ),
      ),
      initialRoute: '/',
      routes: {
        ChoiceScreen.route: (context) => ChoiceScreen(),

        //profile navigate
        ProfileWan.route: (context) => ProfileWan(),
        ProfileFarhan.route: (context) => ProfileFarhan(),
        ProfileZulhilmi.route: (context) => ProfileZulhilmi(),
        ProfileFaizal.route: (context) => ProfileFaizal(),
        ProfileSallehuddin.route: (context) => ProfileSallehuddin(),
        ProfileAmeerul.route: (context) => ProfileAmeerul(),
        ProfileAhmad.route: (context) => ProfileAhmad(),
        ProfileShafiqFirdaus.route: (context) => ProfileShafiqFirdaus(),
        ProfileSurrendranRao.route: (context) => ProfileSurrendranRao(),
        ProfileAmir.route: (context) => ProfileAmir(),
        ProfileKhairul.route: (context) => ProfileKhairul(),
      },
    );
  }
}

class Scrolling extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class ChoiceScreen extends StatelessWidget {
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth > 1400) {
          return Desktop();
        } else {
          return Mobile();
        }
      },
    );
  }
}
