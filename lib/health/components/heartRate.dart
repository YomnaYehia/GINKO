import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ginko/Constants.dart';
import 'package:ginko/view/awarnessScreen/widget/searchCard.dart';
class HeartRateCard extends StatelessWidget {
  const HeartRateCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        height:MediaQuery.of(context).size.height*.40,
        width:MediaQuery.of(context).size.width*.88,
        decoration: BoxDecoration(
          color: SecondaryColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('Heart Rate',style: TextStyle(
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
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset('assets/images/heartcard.svg'),
                    SvgPicture.asset('assets/images/heart.svg'),
                  ],
                ),

                ],

              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset('assets/images/heartrate.svg'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('82',style: TextStyle(fontSize: 24,color: PrimaryColor,fontFamily: 'RedHatDisplay-Bold'),),
                    Text(' bpm',style: TextStyle(fontSize: 22,color: Colors.white,fontFamily: 'RedHatDisplay-Regular'),),
                  ],

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
