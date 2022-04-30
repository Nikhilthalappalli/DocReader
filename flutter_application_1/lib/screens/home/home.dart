import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/widget/medicineitems.dart';
import 'package:flutter_application_1/screens/home/widget/medi_list.dart';
import 'package:flutter_application_1/screens/home/widget/search_bar.dart';
import 'package:flutter_application_1/widgets/appbar.dart';
import 'package:flutter_application_1/widgets/navbar.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'dart:html';
import '../../utils/colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var selected = 0;

  // get children => null;

  // int get selected => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.document_scanner_outlined),
          label: 'Scan',
        ),
        NavigationDestination(
          icon: Icon(Icons.history),
          label: 'History',
        ),
      ]),
      // bottomNavigationBar: GNav(tabs: [
      //   GButton(icon: Icons.home),
      //   GButton(icon: Icons.scanner),
      //   GButton(icon: Icons.history),
      // ]),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.scanner),
      //   backgroundColor: AppColors.mainColor,
      //   onPressed: () {},
      // ),
      // backgroundColor: Color(0xFFF6F5F5),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Appbar(),
          SearchBar(),
          Expanded(
              flex: 8,
              child: SingleChildScrollView(
                child: MediItems(),
              )),
        ],
      ),
    );
  }
}
