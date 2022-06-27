import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child:Text('New Record',style: TextStyle(
            color: Colors.white,
            fontFamily: 'RedHatDisplay-Regular',
            fontSize: 13,
          ),) ,
          onPressed: (){},
          style: ButtonStyle(
            backgroundColor:MaterialStateProperty.all(Color.fromRGBO(12, 4, 64, 1)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
          ),
        ),
          ),
        ),
      ],
    );
  }
}
