import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ginko/add_Medical_Reminder.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MedicalReminder extends StatefulWidget {
  const MedicalReminder({Key? key}) : super(key: key);

  @override
  _MedicalReminderState createState() => _MedicalReminderState();
}

class _MedicalReminderState extends State<MedicalReminder> {
  bool _value = false;
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
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 7,
          ),
          Text(
            'Medical Reminder',
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
          // Calender
          SfCalendar(
            view: CalendarView.month,
            dataSource: MeetingDataSource(_getDataSource()),
            todayHighlightColor: HexColor('#ffffff'),
            todayTextStyle: GoogleFonts.redHatText(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: HexColor('#665FD6'),
            ),
            backgroundColor: HexColor('#665FD6'),
            selectionDecoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            headerStyle: CalendarHeaderStyle(
              textStyle: GoogleFonts.redHatText(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: HexColor("#ffffff"),
              ),
            ),
            showNavigationArrow: true,
            monthViewSettings: const MonthViewSettings(
                appointmentDisplayMode:
                MonthAppointmentDisplayMode.appointment),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 25,
          ),
// CARD Under Calender
          Container(
            width: 360,
            height: 94,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.white,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('TIME'),
                Row(
                  children: [
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      width: 22,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(7),
                        ),
                        color: HexColor('#F3F4F6'),
                      ),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Center(
                          child: Text(
                            'Date',
                            style: GoogleFonts.redHatText(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: HexColor("#FD7300"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          'Medicine Name',
                          style: GoogleFonts.redHatText(
                            textStyle: TextStyle(
                              color: HexColor("#0C0440"),
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          'Dose',
                          style: GoogleFonts.redHatText(
                            textStyle: TextStyle(
                              color: HexColor("#ffffff"),
                              fontSize: 13,
                              //fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Checkbox(
                      value: false,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                      checkColor: HexColor('#ffffff'),
                      fillColor: MaterialStateProperty.all(Colors.deepPurple),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete_outline_rounded),
                      color: Colors.deepPurple,
                      iconSize: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 50),

          Row(
            children: [
              SizedBox(width: 320),
              // ADD Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ADDMedicalReminder()),
                  );
                },
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: HexColor('#ffffff'),
                    size: 50,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: HexColor("#0C0440"),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    minimumSize: Size(40, 40),
                    maximumSize: Size(60, 60),
                    padding: EdgeInsets.only(right: 1)
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List<Meeting> _getDataSource() {
  final List<Meeting> meetings = <Meeting>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
  DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));
  meetings.add(Meeting(
      'Conference', startTime, endTime, const Color(0xFF0F8644), false));
  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return _getMeetingData(index).from;
  }

  @override
  DateTime getEndTime(int index) {
    return _getMeetingData(index).to;
  }

  @override
  String getSubject(int index) {
    return _getMeetingData(index).eventName;
  }

  @override
  Color getColor(int index) {
    return _getMeetingData(index).background;
  }

  @override
  bool isAllDay(int index) {
    return _getMeetingData(index).isAllDay;
  }

  Meeting _getMeetingData(int index) {
    final dynamic meeting = appointments![index];
    late final Meeting meetingData;
    if (meeting is Meeting) {
      meetingData = meeting;
    }

    return meetingData;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);
  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}