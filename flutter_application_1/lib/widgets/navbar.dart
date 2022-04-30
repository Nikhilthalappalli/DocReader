import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: Container(
        //   height: 70,
        //   color: AppColors.mainColor,
        //   child: Row(
        //     children: <Widget>[
        //       Column(
        //         children: <Widget>[
        //           // SvgPicture.asset("assets/icons/home2.svg"),
        //           Icon(
        //             Icons.home,
        //           ),
        //           Text("Home")
        //         ],
        //       )
        //     ],
        //   ),
        // ),

        // resizeToAvoidBottomInset: false,

        // bottomNavigationBar: NavigationBar(destinations: [
        //   NavigationDestination(
        //     icon: Icon(Icons.home),
        //     label: 'Home',
        //   ),
        //   NavigationDestination(
        //     icon: Icon(Icons.scanner),
        //     label: 'Scanner',
        //   ),
        //   NavigationDestination(
        //     icon: Icon(Icons.history),
        //     label: 'History',
        //   ),
        // ]),
        // bottomNavigationBar: GNav(tabs: [
        //   GButton(icon: Icons.home),
        //   GButton(icon: Icons.scanner),
        //   GButton(icon: Icons.history),
        // ]),
        );
  }
}
