import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 7,
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                color: HexColor("#665FD6"),
                padding: EdgeInsets.only(top: 25, left: 25),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            'Location',
            style: GoogleFonts.redHatText(
              textStyle: TextStyle(
                color: HexColor("#0C0440"),
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Image.asset('images/map.jpg'),
        ],
      ),
    );
  }
}
