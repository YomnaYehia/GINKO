import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:accordion/accordion.dart';

class Awareness extends StatefulWidget {
  const Awareness({Key? key}) : super(key: key);

  @override
  _AwarenessState createState() => _AwarenessState();
}

class _AwarenessState extends State<Awareness> {
  var _controller = TextEditingController();

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
                padding: EdgeInsets.only(top: 25 , left: 25),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 10,
          ),
          Text(
            'Awareness',
            style: GoogleFonts.redHatText(
              textStyle: TextStyle(
                color: HexColor("#0C0440"),
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 10,
          ),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              border: Border.all(style: BorderStyle.solid),
            ),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: HexColor("#665FD6"),
                ),
                suffixIcon: IconButton(
                  onPressed: _controller.clear,
                  icon: Icon(
                    Icons.clear,
                    color: HexColor("#665FD6"),
                  ),
                ),
                hintText: 'Search...',
                hintStyle: GoogleFonts.redHatText(
                  textStyle: TextStyle(
                    color: HexColor("#0C044080").withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 15,
          ),
          Accordion(
            maxOpenSections: 2,
            headerBackgroundColor: HexColor("#665FD6"),
            headerBackgroundColorOpened: HexColor("#665FD6").withOpacity(0.6),
            headerBorderRadius: 25,
            rightIcon: Icon(
              Icons.keyboard_arrow_down,
              size: 25,
              color: HexColor("#FD7300"),
            ),
            contentBackgroundColor: HexColor("665FD6"),
            contentBorderRadius: 25,
            contentBorderWidth: MediaQuery.of(context).size.width * 0.75,
            contentHorizontalPadding: 39,
            contentVerticalPadding: 15,
            children: [
              AccordionSection(
                header: Text(
                  'How do you keep someone with alzheimers busy?',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    fontFamily: 'redHatText',
                    color: Colors.white,
                  ),
                ),
                content: Text(
                  'Bake or cook simple recipes together.\n Look at books the person used to enjoy.\nDo arts and crafts, such as knitting and painting.\nOrganize household or office items, particularly if the person used to take pleasure in organizational tasks.',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    fontFamily: 'redHatText',
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
