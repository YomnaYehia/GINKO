import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ginko/Constants.dart';
class MedicalHistoryCard extends StatelessWidget {
  final String doctor;
  final String phone;
  final String date;
  final String medicine;
  final String name;

  const MedicalHistoryCard({Key? key, required this.doctor,
    required this.phone,
    required this.date,
    required this.medicine,
    required this.name}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
      child: Container(
        height:MediaQuery.of(context).size.height*.30 ,
        width: MediaQuery.of(context).size.width*.88,
        decoration: BoxDecoration(
          color: SecondaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround ,

              children: [
                Text(name,
                  style: TextStyle(
                  fontFamily: 'RedHatDisplay-Bold',
                  fontSize: 18,
                  color: Colors.white,
                ),),
                IconButton(onPressed:(){}, icon:SvgPicture.asset('assets/images/edit.svg'),
                  ),
                ]
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Doctor Name:',style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'RedHatDisplay-Regular',
                          fontSize: 12,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Doctor number:',style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'RedHatDisplay-Regular',
                          fontSize: 12,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Next appointement:',style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'RedHatDisplay-Regular',
                          fontSize: 12,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Medciations:',style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'RedHatDisplay-Regular',
                          fontSize: 12,
                        ),
      ),
                      ),

                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(doctor,style: TextStyle(
                        color: PrimaryColor,
                        fontFamily: 'RedHatDisplay-Bold',
                        fontSize: 10,
                      ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(phone,style: TextStyle(
                        color: PrimaryColor,
                        fontFamily: 'RedHatDisplay-Bold',
                        fontSize:10,
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(date,
                        style: TextStyle(
                          color: PrimaryColor,
                          fontFamily: 'RedHatDisplay-Bold',
                          fontSize: 10,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(medicine,
                        style: TextStyle(
                          color: PrimaryColor,
                          fontFamily: 'RedHatDisplay-Bold',
                          fontSize: 10,
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            )
]
        ),






      ),
    );
  }
}
