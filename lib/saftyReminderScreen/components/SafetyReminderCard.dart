import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ginko/view/saftyReminderScreen/widget/SafetyCard.dart';
class SafetyReminderCard extends StatelessWidget {
  const SafetyReminderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Container(
            height: MediaQuery.of(context).size.height*.06,
            width:  MediaQuery.of(context).size.width*.88,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(243, 244, 246, 1),
            ),
            child: TextFormField(
              decoration: InputDecoration(
               hintText:'Enter Your New Task',
                hintStyle: TextStyle(
                  fontFamily: 'RedHatDisplay-Regular',
                  fontSize: 12,
                ),
                suffixIcon: IconButton(icon: SvgPicture.asset('assets/images/enter.svg'),
                  onPressed: (){

                  },
                ),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
              ),
    contentPadding: EdgeInsets.all(20),
    enabledBorder: InputBorder.none,
               ),





),

          ),
        );


  }
}
