import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

import '../../../models/medicine.dart';

class MediItems extends StatelessWidget {
  // final Medi medi;
  final MedicineDataModel medi;

  const MediItems({Key? key, required this.medi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Align(
    //   alignment: Alignment.topLeft,
    //   child: Container(
    //     padding: const EdgeInsets.only(top: 30, left: 25),
    //     child: Text('POPULAR',
    //         textAlign: TextAlign.left,
    //         style: new TextStyle(
    //             fontSize: 18,
    //             fontFamily: 'Poppins',
    //             fontWeight: FontWeight.w600,
    //             color: AppColors.textColor)),
    //   ),
    // ),

    return SingleChildScrollView(
      child: InkWell(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 5),
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
                      image: AssetImage(medi.imgUrl), fit: BoxFit.fill),

                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4)
                  ],
                ),
                // child: Container(
                //   height: 60,
                //   width: 60,
                //   child: Image.asset(medi.imgUrl),
                // ),
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
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            medi.name,
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: AppColors.textColor),
                          ),
                          // Text(
                          //   medi.name,
                          //   style: TextStyle(
                          //       fontSize: 15,
                          //       fontFamily: 'Poppins',
                          //       fontWeight: FontWeight.bold,
                          //       color: AppColors.textColor),
                          // ),
                          // Text(
                          //   medi.desc,
                          //   style: TextStyle(
                          //       fontSize: 10,
                          //       fontFamily: 'Poppins',
                          //       fontWeight: FontWeight.normal,
                          //       color: AppColors.textColor),
                          // ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            medi.desc,
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                                color: AppColors.textColor),
                          ),
                          // Text(
                          //   "Price: ${medi.Price}Rs/Unit",
                          //   style: TextStyle(
                          //       fontSize: 15,
                          //       fontFamily: 'Poppins',
                          //       fontWeight: FontWeight.normal,
                          //       color: AppColors.textColor),
                          // )
                          Text(
                            'Price: ${medi.Price} Rs/Unit',
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
        ),
      ),
    );
  }
}
