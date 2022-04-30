import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(
      //   // top: MediaQuery.of(context).padding.top,
      //   top: 30,
      //   left: 15,
      //   right: 25,
      // ),
      padding: const EdgeInsets.only(top: 50),
      child:
          new Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        new Container(
          child: new Text(
            'DocReader',
            style: new TextStyle(
                fontSize: 25,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: const Color(0xFF0A9396)),
          ),
        ),
        Container(
          width: 24,
          height: 24,
          child: Icon(
            Icons.menu,
            color: AppColors.mainColor,
          ),
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //     color: AppColors.mainColor),
        )
      ]),
    );
  }
}
