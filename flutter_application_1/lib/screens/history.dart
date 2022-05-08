import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_details.dart';
import 'package:flutter_application_1/screens/detail/user_detail.dart';
import 'package:flutter_application_1/utils/colors.dart';
// import 'package:flutter_application_1/widgets/appbar.dart';
import 'package:flutter_application_1/widgets/navbar.dart';

class historyPage extends StatelessWidget {
  const historyPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8F9FD),
      appBar: AppBar(
        title: Text(
          "History",
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        backgroundColor: AppColors.mainColor,
      ),
      body: ListView.builder(
          itemCount: userdata.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            UserDetailPage(user: userdata[index])));
              },
              child: historybox(
                user: userdata[index],
              ),
            );
          }),
      bottomNavigationBar: NavBar(),
    );
  }
}

class historybox extends StatelessWidget {
  final UserDataModel user;
  const historybox({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
      padding: EdgeInsets.only(left: 5, right: 5, top: 10),
      height: 80,

      // width: ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 4),
              blurRadius: 4)
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 30, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              // user.Name,
              "${user.Name}'s Prescription",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColor),
            ),
            Text(
              user.Date,
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor),
            ),
          ],
        ),
      ),
    );
  }
}
