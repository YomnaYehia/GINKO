import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ginko/Constants.dart';
import 'package:slide_to_act/slide_to_act.dart';
class AlertDialogCard extends StatefulWidget {
  const AlertDialogCard({Key? key}) : super(key: key);

  @override
  State<AlertDialogCard> createState() => _AlertDialogCardState();
}

class _AlertDialogCardState extends State<AlertDialogCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content:Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/warning.svg'),
              Text('WARNNING!',style: TextStyle(
                fontFamily: 'RedHatDisplay-Bold',
                fontSize: 25,
                color: Color.fromRGBO(12, 4, 64, 1),
              ),),
              Text('Your Relative has fallen',style: TextStyle(
                fontFamily: 'RedHatDisplay-Bold',
                fontSize: 9,
                color: Color.fromRGBO(253, 115, 0, 0.6),
              ),),
            ],
          ) ,
        ),

      ],
    );
  }
}
