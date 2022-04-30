import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

class MediItems extends StatelessWidget {
  // final Medi medi;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: const EdgeInsets.only(top: 30, left: 25),
            child: Text('POPULAR',
                textAlign: TextAlign.left,
                style: new TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor)),
          ),
        ),
        Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            height: 900,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, idenx) {
                  return Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 90,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(20),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(0),
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(0)),
                            color: Colors.white,
                            // border: Border.all(
                            // color: AppColors.textColor, width: .2),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/paracetamol.jpg")),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0, 4),
                                  blurRadius: 4)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                              height: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(0),
                                    bottomLeft: Radius.circular(0),
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
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Paracetamol',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.textColor),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Used for cold and some viral fevers',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal,
                                          color: AppColors.textColor),
                                    ),
                                    Text(
                                      'Price:2Rs/Unit',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w100,
                                          color: AppColors.textColor),
                                    ),
                                  ],
                                ),
                              )),
                        )
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
