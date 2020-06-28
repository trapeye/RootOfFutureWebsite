import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MemberScreen extends StatelessWidget {
  final String fullName;
  final String nickName;
  final String picture;

  MemberScreen(this.fullName, this.nickName, this.picture);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => true,
        child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFFe0eafc),
                Color(0xFFcfdef3),
              ]),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 1200) {
                      return DesktopMember(fullName, nickName, picture);
                    } else {
                      return MobileMember(fullName, nickName, picture);
                    }
                  },
                ),
              ),
            ),
          ),
          backgroundColor: Colors.black54,
        ));
  }
}

class DesktopMember extends StatelessWidget {
  final String fullName;
  final String nickName;
  final String picture;
  DesktopMember(this.fullName, this.nickName, this.picture);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 969,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 969,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                child: Image.asset(
                  picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
                height: 969,
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textProfile(fullName, 100),
                    SizedBox(
                      height: 70.0,
                    ),
                    textProfile(nickName, 100),
                  ],
                ))
          ],
        ));
  }
}

class MobileMember extends StatelessWidget {
  final String fullName;
  final String nickName;
  final String picture;

  MobileMember(this.fullName, this.nickName, this.picture);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40.0),
      child: Column(
        children: [
          profilePicture(picture),
          SizedBox(
            height: 50.0,
          ),
          textProfile(fullName, 70),
          SizedBox(
            height: 50.0,
          ),
          textProfile(nickName, 70),
        ],
      ),
    );
  }
}

Widget textProfile(String text, double fontSize) {
  return Text(
    text,
    style: GoogleFonts.zcoolXiaoWei(
        fontSize: fontSize,
        color: Color(0xFF2b0000),
        fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}

Widget profilePicture(String picture) {
  return Container(
    padding: EdgeInsets.all(6.0),
    decoration: BoxDecoration(
      gradient: new LinearGradient(
        colors: [
          Color(0xFFfeda75),
          Colors.red,
          Color(0xFFfa7e1e),
        ],
      ),
      shape: BoxShape.circle,
    ),
    child: CircleAvatar(
      radius: 140,
      backgroundImage: AssetImage(
        picture,
      ),
    ),
  );
}
