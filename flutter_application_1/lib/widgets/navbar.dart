import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/medicine.dart';
import 'package:flutter_application_1/screens/detail/detail_page.dart';
import 'package:flutter_application_1/screens/home/home.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:image_picker/image_picker.dart';

import '../screens/history.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  NavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  File? image;

  var index;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 40,
        right: 40,
        bottom: 20,
      ),
      height: 60,
      decoration: BoxDecoration(
          color: AppColors.mainColor,
          // boxShadow: [
          //   BoxShadow(
          //     offset: Offset(0, -10),
          //     blurRadius: 35,
          //     color: AppColors.mainColor.withOpacity(0.38),
          //   ),
          // ],
          // ignore: prefer_const_constructors
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            // icon: Image.asset(
            //   "assets/icons/home.png",
            //   color: Colors.white,
            //   height: 26,
            //   width: 26,
            // ),
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Homepage()));
            },
          ),
          IconButton(
            // icon: Image.asset(
            //   "assets/icons/scan2.png",
            //   color: Colors.white,
            //   height: 26,
            //   width: 26,
            // ),
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
            onPressed: () => pickImage(ImageSource.camera),
          ),
          IconButton(
            // icon: Image.asset(
            //   "assets/icons/history.png",
            //   color: Colors.white,
            //   height: 26,
            //   width: 26,
            // ),
            icon: Icon(
              Icons.history,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => historyPage()));
            },
          ),
        ],
      ),
    );
  }
}
