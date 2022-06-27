import 'package:flutter/material.dart';
import 'package:ginko/Constants.dart';
import 'package:ginko/view/fallDetection/components/alertDialog.dart';
class FallDetectionView extends StatefulWidget {
  const FallDetectionView({Key? key}) : super(key: key);

  @override
  State<FallDetectionView> createState() => _FallDetectionViewState();
}

class _FallDetectionViewState extends State<FallDetectionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(243, 244, 246, 1),
        leading: BackButton(
          onPressed: (){},
          color: PrimaryColor,
        ),
      ),
      backgroundColor:Color.fromRGBO(243, 244, 246, 1),
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Fall Detection',style: TextStyle(
              fontFamily: 'RedHatDisplay-Bold',
              fontSize: 20,
              color: Color.fromRGBO(12, 4, 64, 1),
            ),),
          ),
          AlertDialogCard(),
        ],
      ),

    );
  }
}
