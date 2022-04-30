import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator SearchBar - GROUP
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                offset: Offset(0, 4),
                blurRadius: 4)
          ],
          color: Color.fromRGBO(255, 255, 255, 1),
          border: Border.all(
            color: Color.fromRGBO(241, 241, 241, 1),
            width: 1,
          ),
        ),
        child: 1 == 1
            ? TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search',
                ),
              )
            : ((Row(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: AppColors.mainColor,
                    size: 24.0,
                  ),
                  Text(
                    '  Search Here...',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        color: AppColors.textColor),
                  ),
                ],
              ))),

        // padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        // width: 326,
        // height: 42,
        // child: Stack(children: <Widget>[
        //   Positioned(
        //       top: 0,
        //       left: 0,
        //       right: 0,de
        //       child: Container(
        //           width: 326,
        //           height: 42,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.only(
        //               topLeft: Radius.circular(15),
        //               topRight: Radius.circular(15),
        //               bottomLeft: Radius.circular(15),
        //               bottomRight: Radius.circular(15),
        //             ),
        //             boxShadow: [
        //               BoxShadow(
        //                   color: Color.fromRGBO(0, 0, 0, 0.25),
        //                   offset: Offset(0, 4),
        //                   blurRadius: 4)
        //             ],
        //             color: Color.fromRGBO(255, 255, 255, 1),
        //             border: Border.all(
        //               color: Color.fromRGBO(241, 241, 241, 1),
        //               width: 1,
        //             ),
        //           ))),
        // Positioned(
        //   top: 10,
        //   left: 20,
        //   child: Text(""),
        // ),
        //   Positioned(
        //       top: 11,
        //       left: 52,
        //       child: Text(
        //         'Search here',
        //         textAlign: TextAlign.left,
        //         style: TextStyle(
        //             color: Color.fromRGBO(16, 16, 18, 1),
        //             fontFamily: 'Poppins',
        //             fontSize: 15,
        //             letterSpacing:
        //                 0 /*percentages not used in flutter. defaulting to zero*/,
        //             fontWeight: FontWeight.normal,
        //             height: 1),
        //       )),
        // ])
      ),
    );
  }
}

// class SearchBar extends StatelessWidget {
//   const SearchBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Stack(children: [
//         Positioned(
//           bottom: 0,
//           left: 0,
//           right: 0,
//           child: Container(
//               margin: EdgeInsets.symmetric(horizontal: 20),
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               height: 10,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     offset: Offset(0, 10),
//                     blurRadius: 50,
//                     color: Color(0xFFF6F5F5).withOpacity(0.23),
//                   )
//                 ],
//               ),
//               child: Row(
//                 children: <Widget>[
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: "Search",
//                         hintStyle: TextStyle(
//                           color: Color(0xFFF6F5F5).withOpacity(0.5),
//                         ),
//                         enabledBorder: InputBorder.none,
//                         focusedBorder: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ],
//               )),
//         ),
//       ]),
//     );
//   }
// }
