import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Constants.dart';
class BloodPressure extends StatelessWidget {
  const BloodPressure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height:MediaQuery.of(context).size.height*.40,
        width:MediaQuery.of(context).size.width*.88,

        decoration: BoxDecoration(
        color: PrimaryColor,
        borderRadius: BorderRadius.circular(15),
    border: Border.all(color: Colors.black),),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text('Blood Pressure',style: TextStyle(
                      fontFamily: 'RedHatDisplay-Bold',
                      fontSize: 22,
                      color: Colors.white,
                    ),),
                    SizedBox(height: 2,),
                    Text('Last update  Today 4:00 pm',style: TextStyle(
                      fontFamily: 'RedHatDisplay-regular',
                      fontSize: 10,
                      color: ThirdColor,
                    ),),

                  ],
                ),
                SvgPicture.asset('assets/images/pressure.svg'),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              child: SvgPicture.asset('assets/images/BloodPressure.svg'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('90/60',style: TextStyle(fontSize: 24,color: SecondaryColor,fontFamily: 'RedHatDisplay-Bold'),),
                  Text(' mm hg',style: TextStyle(fontSize: 22,color: Colors.white,fontFamily: 'RedHatDisplay-Regular'),),
                ],

              ),
            )

          ],
        ),
      ),
    );
  }
}
