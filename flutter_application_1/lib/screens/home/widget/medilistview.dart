import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/detail/detail_page.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:get/get.dart';
import '../../../models/medicine.dart';

class MediListView extends StatelessWidget {
  final MedicineDataModel medi;
  const MediListView({Key? key, required this.medi}) : super(key: key);

  get index => null;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.to(DetailPage(medi: mediData[index]));
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(medi: mediData[index])));
      },
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  color: Color.fromRGBO(0, 0, 0, 0.25)),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(33))),
        margin: const EdgeInsets.symmetric(vertical: 9),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              width: double.infinity,
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Image.asset(medi.imgUrl),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        medi.name,
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: AppColors.textColor),
                      ),
                      Text(
                        medi.desc,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                            color: AppColors.textColor),
                      ),
                      Text(
                        "Price: ${medi.Price}",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                            color: AppColors.textColor),
                      ),
                    ],
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
