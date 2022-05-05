import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: HexColor("#665FD6"),
        child: Padding(
          padding: const EdgeInsets.only(top: 100, bottom: 100),
          child: Column(
            children: [
              Text(
                'GINKO',
                style: GoogleFonts.robotoMono(
                  textStyle: TextStyle(
                    color: HexColor("#FFFFFF"),
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 20,
              ),
              Container(
                width: 150,
                height: 150,
                child: SvgPicture.asset('images/logo.svg'),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 30,
              ),
              Text(
                'Welcome to GINKO',
                style: GoogleFonts.redHatText(
                  textStyle: TextStyle(
                    color: HexColor("#FFFFFF").withOpacity(0.6),
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 3,
              ),
              Text(
                'for taking care of alzheimer patients',
                style: GoogleFonts.redHatText(
                  textStyle: TextStyle(
                    color: HexColor("#FFFFFF"),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){},
                child: Text(
                  'Let\'s Start',
                  style: GoogleFonts.redHatText(
                    textStyle: TextStyle(
                      color: HexColor("#5050CE"),
                      fontSize: 21,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                style: ElevatedButton.styleFrom(
                  primary: HexColor("#FFFFFF"),
                  onPrimary: HexColor("#5050CE"),
                  elevation: 7,
                  fixedSize: Size(200, 62),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
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
