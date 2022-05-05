import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class ADDMedicalReminder extends StatefulWidget {
  const ADDMedicalReminder({Key? key}) : super(key: key);

  @override
  _ADDMedicalReminderState createState() => _ADDMedicalReminderState();
}

class _ADDMedicalReminderState extends State<ADDMedicalReminder> {
  TextEditingController _controller = TextEditingController();
  DateTimeRange? _selectedDateRange;

  void _show() async {
    final DateTimeRange? result = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2022, 1, 1),
      lastDate: DateTime(2030, 12, 31),
      currentDate: DateTime.now(),
      saveText: 'Done',
    );

    if (result != null) {
      // Rebuild the UI
      print(result.start.toString());
      setState(() {
        _selectedDateRange = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 590,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        elevation: 5,
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Text(
              'Add Medical Reminder',
              style: GoogleFonts.redHatDisplay(
                textStyle: TextStyle(
                  color: HexColor("#0C0440"),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 34,
            ),

            // Medicine Name
            Row(
              children: [
                SizedBox(
                  width: 55,
                ),
                Text(
                  'Medicine Name',
                  style: GoogleFonts.redHatDisplay(
                    textStyle: TextStyle(
                      color: HexColor("#0C0440"),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  color: HexColor('#B3AFEB'),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: '        Enter Medicine Name ',
                  hintStyle: GoogleFonts.redHatDisplay(
                    textStyle: TextStyle(
                      color: HexColor("#FFFFFF").withOpacity(0.8),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 34,
            ),

            //Dose
            Row(
              children: [
                SizedBox(
                  width: 55,
                ),
                Text(
                  'Dose',
                  style: GoogleFonts.redHatDisplay(
                    textStyle: TextStyle(
                      color: HexColor("#0C0440"),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  color: HexColor('#B3AFEB'),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: '        Enter The Dose ',
                  hintStyle: GoogleFonts.redHatDisplay(
                    textStyle: TextStyle(
                      color: HexColor("#FFFFFF").withOpacity(0.8),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 34,
            ),

            //Date
            Row(
              children: [
                SizedBox(
                  width: 55,
                ),
                Text(
                  'Date',
                  style: GoogleFonts.redHatDisplay(
                    textStyle: TextStyle(
                      color: HexColor("#0C0440"),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 55,
                ),
                //Start
                Container(
                  width: 110,
                  height: 50,
                  decoration: BoxDecoration(
                      color: HexColor('#B3AFEB'),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Center(
                    child: TextButton(
                      onPressed: _show,
                      child: Text(
                        " ${_selectedDateRange?.end.toString().split(' ')[0]}",
                        style: GoogleFonts.redHatDisplay(
                          textStyle: TextStyle(
                            color: HexColor("#FFFFFF").withOpacity(0.8),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: 80,
                  child: Center(
                    child: Text('To'),
                  ),
                ),

                //End
                Container(
                  width: 110,
                  height: 50,
                  decoration: BoxDecoration(
                      color: HexColor('#B3AFEB'),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Center(
                    child: TextButton(
                      onPressed: _show,
                      child: Text(
                        " ${_selectedDateRange?.end.toString().split(' ')[0]}",
                        style: GoogleFonts.redHatDisplay(
                          textStyle: TextStyle(
                            color: HexColor("#FFFFFF").withOpacity(0.8),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 34,
            ),

            //Time
            Row(
              children: [
                SizedBox(
                  width: 55,
                ),
                Text(
                  'Time',
                  style: GoogleFonts.redHatDisplay(
                    textStyle: TextStyle(
                      color: HexColor("#0C0440"),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: TimePickerSpinner(
                is24HourMode: false,
                normalTextStyle: TextStyle(
                  fontSize: 12,
                  color: HexColor('#5050CE'),
                ),
                highlightedTextStyle:
                    TextStyle(fontSize: 12, color: HexColor('#0C0440')),
                spacing: 10,
                itemHeight: 20,
                isForce2Digits: true,
                onTimeChange: (time) {
                  setState(() {
                    time = time;
                  });
                },
              ),
            ),
            SizedBox(
              height: 60,
            ),

            //Save
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: HexColor('#0C0440'),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Center(
                child: Text(
                  'ADD',
                  style: GoogleFonts.redHatText(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: HexColor('#FFFFFF'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
