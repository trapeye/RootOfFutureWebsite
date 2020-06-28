import 'package:RootOfFuture/Const/Const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  static const String route = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      controller: _controller,
    );
  }
}

class BackgroundPage extends StatelessWidget {
  BackgroundPage({
    @required AnimationController controller,
  }) : animation = HomePageEnterAnimation(controller);

  final HomePageEnterAnimation animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation.controller,
      builder: (context, child) {
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                alignment: FractionalOffset.topCenter,
                image: AssetImage(ImageBackground.firstScreenBg),
                fit: BoxFit.cover),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(0.01, 0.4),
                  end: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(
                        1, 1, 1, animation.opacityBackgroundBlack.value),
                    Color.fromRGBO(1, 1, 1, 0.2),
                  ]),
            ),
            child: MainPage(),
          ),
        );
      },
    );
  }
}

class HomePageEnterAnimation {
  HomePageEnterAnimation(this.controller)
      : opacityBackgroundBlack =
            Tween<double>(begin: 0, end: 0.9).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(0, 0.5, curve: Curves.easeIn),
        )),
        logoOpacity = Tween<double>(begin: 0, end: 1.0).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(0.5, 1.0, curve: Curves.easeIn),
        ));

  final AnimationController controller;
  final Animation<double> opacityBackgroundBlack;
  final Animation<double> logoOpacity;
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Root OF Future',
                style: GoogleFonts.oregano(fontSize: 200),
              ),
              Text(
                ' - Kawan Baek',
                style: GoogleFonts.oregano(fontSize: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
