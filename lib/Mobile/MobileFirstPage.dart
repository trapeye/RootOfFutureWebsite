import 'package:RootOfFuture/Data/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Column(
        children: [
          Image.asset(
            Picture.logorof,
            scale: 2.5,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Root OF Future',
            textAlign: TextAlign.center,
            style: GoogleFonts.oregano(fontSize: 120),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            ' - Kawan Baek',
            textAlign: TextAlign.center,
            style: GoogleFonts.oregano(fontSize: 40),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
