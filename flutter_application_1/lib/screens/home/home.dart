import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/medicine.dart';
import 'package:flutter_application_1/screens/detail/detail_page.dart';
import 'package:flutter_application_1/screens/home/widget/medicineitems.dart';
import 'package:flutter_application_1/widgets/navbar.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../utils/colors.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../../widgets/body.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();

  void setState(File file) {}
}

class _HomepageState extends State<Homepage> {
  var selected = 0;
  List<String> _tags = ["Capsules", "Tablets", "Tonics", "Vitamins"];
  int _selectedtag = 0;

  get index => null;

  File? image;

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

  Widget _buildTags(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedtag = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        margin: EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
          color: _selectedtag == index ? AppColors.mainColor : Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          _tags[index],
          style: TextStyle(
              color: _selectedtag == index ? Colors.white : Colors.black,
              fontFamily: "Poppins"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: new IconButton(
            // icon: new Icon(Icons.menu),
            icon: Image.asset(
              "assets/icons/hamburger.png",
              color: Colors.white,
              height: 26,
              width: 26,
            ),
            iconSize: 12,
            onPressed: () {}
            //   drawer:
            //   drawer();
            // },
            ),
        backgroundColor: AppColors.mainColor,
      ),
      backgroundColor: Color(0xFFE8F9FD),
      body: Column(
        children: [
          Body(),
          SizedBox(
            height: 25,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: _tags
          //       .asMap()
          //       .entries
          //       .map((MapEntry map) => _buildTags(map.key))
          //       .toList(),
          // ),
          // Expanded(
          //     flex: 8,
          //     child: SingleChildScrollView(
          //       // ignore: prefer_const_constructors
          //       child: MediItems(medi: mediData[index]),
          //     )),

          Expanded(
            child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              // shrinkWrap: true,
              itemCount: mediData.length,
              // itemBuilder: (context, index) => MediItems(
              //       medi: mediData[index],
              //     ))),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailPage(medi: mediData[index])));
                  },
                  child: MediItems(medi: mediData[index]),
                );
              },
            ),
          ),
          // Expanded(child: _buildMediList())
          // Expanded(
          //     child: ListView.builder(
          //         itemBuilder: (context, index) =>
          //             MediListView(medi: mediData[index]))),
        ],
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}

// class drawer extends StatelessWidget {
//   const drawer({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           DrawerHeader(
//             decoration: BoxDecoration(
//               color: AppColors.mainColor,
//             ),
//             child: Text("DocReader"),
//           ),
//           ListTile(
//             title: const Text(
//                 "This is a app that can store your prescriptions and fetch you the medicine details"),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
