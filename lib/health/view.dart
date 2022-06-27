import 'package:flutter/material.dart';
import 'package:ginko/view/health/components/bloodPressure.dart';
import 'package:ginko/view/health/components/heartRate.dart';

import '../../Constants.dart';
class HealthView extends StatelessWidget {
  const HealthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor:Color.fromRGBO(243, 244, 246, 1),
        leading: BackButton(
          onPressed: (){},
          color: PrimaryColor,
        ),
      ),
      body: Container(
        color:Color.fromRGBO(243, 244, 246, 1),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text('Health',style: TextStyle(
                  fontFamily: 'RedHatDisplay-Bold',
                  fontSize: 25,
                  color: Color.fromRGBO(12, 4, 64, 1),
                ),),
              ),
              HeartRateCard(),
              BloodPressure(),
            ],
          ),
        ),
      ),

    );
  }
}
