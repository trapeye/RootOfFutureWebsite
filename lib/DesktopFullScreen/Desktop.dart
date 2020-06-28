import 'package:RootOfFuture/Const/Const.dart';
import 'package:RootOfFuture/Const/RhombusPainting.dart';
import 'package:RootOfFuture/Data/data.dart';
import 'package:RootOfFuture/DesktopFullScreen/ThirdPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../HomePage.dart';
import 'SecondPage.dart';

class Desktop extends StatefulWidget {
  @override
  _DesktopState createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  final PageController _pageController = PageController(initialPage: 0);

  final List<Widget> pageScreenList = [
    HomePage(),
    SecondPage(),
    ThirdPage(),
  ];

  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scrollbar(
          controller: _pageController,
          child: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                page = index;
              });
            },
            pageSnapping: false,
            controller: _pageController,
            scrollDirection: Axis.vertical,
            itemCount: pageScreenList.length,
            itemBuilder: (context, index) {
              return pageScreenList[index];
            },
          ),
        ),
        NavigateTab(_pageController, page),
        Padding(
          padding: const EdgeInsets.fromLTRB(104, 150, 0, 0),
          child: Column(
            children: [
              Container(
                width: 7.0,
                height: 7.0,
                decoration: BoxDecoration(
                  color: ColorPalettes.whitey,
                  shape: BoxShape.circle,
                ),
              ),
              Expanded(
                child: VerticalDivider(
                  thickness: 1,
                  color: ColorPalettes.whitey,
                ),
              ),
            ],
          ),
        ),
        LineRight(page),
      ],
    );
  }
}

class NavigateTab extends StatefulWidget {
  final PageController _pageController;
  final int page;
  NavigateTab(this._pageController, this.page);
  @override
  _NavigateTabState createState() => _NavigateTabState();
}

class _NavigateTabState extends State<NavigateTab> {
  int page = 0;

  FlatButton _buttonTab(String name, int index) {
    return FlatButton(
      onPressed: () {
        setState(() {
          page = index;
        });
        widget._pageController.animateToPage(index,
            duration: Duration(seconds: 2), curve: Curves.easeInOutCubic);
      },
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 500),
        child: Container(
          key: UniqueKey(),
          child: Text(
            name,
            style: GoogleFonts.carterOne(
                fontSize: 30,
                color: widget.page == index
                    ? ColorPalettes.lightblue
                    : ColorPalettes.whitey),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 10),
            child: Image.asset(
              Picture.logorof,
              scale: 5,
            ),
          ),
          SizedBox(
            width: 150,
          ),
          _buttonTab('HOME', 0),
          SizedBox(
            width: 100,
          ),
          _buttonTab('MEMBERS', 1),
          SizedBox(
            width: 100,
          ),
          _buttonTab('ABOUT US', 2),
        ],
      ),
    );
  }
}

class LineRight extends StatefulWidget {
  final int page;
  LineRight(this.page);
  @override
  _LineRightState createState() => _LineRightState();
}

class _LineRightState extends State<LineRight> {
  Widget rhombusPageNavigate(int index) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 500),
      child: Container(
        key: UniqueKey(),
        child: CustomPaint(
          painter: Rhombus(
            strokeColor: widget.page == index
                ? ColorPalettes.lightblue
                : ColorPalettes.whitey,
            strokeWidth: 1,
            paintingStyle: PaintingStyle.fill,
          ),
          child: Container(
            height: 15,
            width: 15,
          ),
        ),
      ),
    );
  }

  CustomPaint rhombusStrokePaint() {
    return CustomPaint(
      painter: Rhombus(
        strokeColor: ColorPalettes.whitey,
        strokeWidth: 1.5,
        paintingStyle: PaintingStyle.stroke,
      ),
      child: Container(
        height: 25,
        width: 25,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 150, 120.5, 150),
        child: Column(
          children: [
            Container(
              width: 7.0,
              height: 7.0,
              decoration: BoxDecoration(
                color: ColorPalettes.whitey,
                shape: BoxShape.circle,
              ),
            ),
            Expanded(
              child: VerticalDivider(
                thickness: 1,
                color: ColorPalettes.whitey,
              ),
            ),
            Container(
              width: 7.0,
              height: 7.0,
              decoration: BoxDecoration(
                color: ColorPalettes.whitey,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            rhombusStrokePaint(),
            SizedBox(
              height: 20,
            ),
            rhombusPageNavigate(0),
            SizedBox(
              height: 20,
            ),
            rhombusPageNavigate(1),
            SizedBox(
              height: 20,
            ),
            rhombusPageNavigate(2),
            SizedBox(
              height: 20,
            ),
            rhombusStrokePaint(),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 7.0,
              height: 7.0,
              decoration: BoxDecoration(
                color: ColorPalettes.whitey,
                shape: BoxShape.circle,
              ),
            ),
            Expanded(
              child: VerticalDivider(
                thickness: 1,
                color: ColorPalettes.whitey,
              ),
            ),
            Container(
              width: 7.0,
              height: 7.0,
              decoration: BoxDecoration(
                color: ColorPalettes.whitey,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
