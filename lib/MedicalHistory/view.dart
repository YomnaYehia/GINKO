import 'package:flutter/material.dart';
import 'package:ginko/Constants.dart';
import 'package:ginko/view/MedicalHistory/components/MedicalHistoryCard.dart';
import 'package:ginko/view/MedicalHistory/components/button.dart';
class MedicalHistoryView extends StatelessWidget {
  const MedicalHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(243, 244, 246, 1),
        leading: BackButton(
          color: PrimaryColor,
          onPressed: (){},
        ),
      ),
      backgroundColor: Color.fromRGBO(243, 244, 246, 1),
      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 10),
           child: Text('Medical History',style: TextStyle(
             fontFamily: 'RedHatDisplay-Bold',
             fontSize: 20,
             color: PrimaryColor,
            ),),
         ),
          Expanded(
            child: ListView(
              children: [
                MedicalHistoryCard(
                  name: 'Diabetes',
                  medicine:'amiloride' ,
                  phone: '+2010457085',
                  date: 'monday 17  may 2022',
                  doctor:'Dr.Ali' ,


                ),
                MedicalHistoryCard(
                  name:'colon disease' ,
                  medicine: 'burfen',
                  phone: '+201074412085',
                  date: 'monday 18 june  2022',
                  doctor:'dr. ahmed ' ,

                ),
                MedicalHistoryCard(
                  name: 'hypertension',
                  medicine:'burfen' ,
                  phone:'+201065851234' ,
                  date: 'monday 14 june  2022',
                  doctor:' dr. mohamed ' ,
                ),
              ],
            ),
          )
         
        ],
      ),
      bottomSheet: Button(),

    );
  }
}
