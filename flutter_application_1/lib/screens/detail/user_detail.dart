import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/widgets/body.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import '../../models/medicine.dart';
import '../../models/user_details.dart';
import 'package:path/path.dart';

class UserDetailPage extends StatefulWidget {
  final UserDataModel user;
  const UserDetailPage({Key? key, required this.user}) : super(key: key);

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  File? image;

  // Future pickImage() async{
  //   try{
  //     final image = await ImagePicker().pickImage(source: ImageSource.gallery);

  //     if(image == null) return;

  //     final imageTemp = File(image.path);

  //     setState(() => this.image = imageTemp);
  //   }on PlatformException catch(e){
  //     print("Failed to pick image: $e");
  //   }
  // }
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      // final imageTemporary = File(image.path);
      final imagePermenent = await saveImagePermanently(image.path);
      setState(() => this.image = imagePermenent);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColors.mainColor,
                      size: 30,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => pickImage(ImageSource.gallery),
                    child: Icon(
                      Icons.image_search,
                      color: AppColors.mainColor,
                    ),
                  )
                ],
              ),
            ),
            UserImage(),
            SizedBox(
              height: 16,
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.only(left: 18, top: 28),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.grey.shade200,
              ),
              child: UserDescription(),
            ))
          ],
        ),
      ),
    );
  }

  Widget UserImage() {
    return Stack(
      children: [
        // Positioned.fill(
        //   child: Align(
        //     alignment: Alignment.bottomCenter,
        //     // child: Container(
        //     //   height: 50,
        //     //   width: 300,
        //     //   // decoration: BoxDecoration(
        //     //   //   color: Colors.grey.shade200,
        //     //   //   borderRadius: BorderRadius.all(
        //     //   //     Radius.elliptical(300, 50),
        //     //   //   ),
        //     //   // ),
        //     // ),
        //   ),
        // ),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            // child: image == null
            //     ? Text("Image is not loaded ")
            //     : Image.file(image!),
            // child: image != null ? Image.file(image!): Text("No image selected")
            child: image != null
                ? Image.file(
                    image!,
                    height: 300,
                    width: 280,
                    fit: BoxFit.cover,
                  )
                : Text("Image is not loaded "),
            // Image.asset(
            //   // medi.imgUrl,
            //   // "assets/images/img1.jpg",

            // ),
          ),
        )
      ],
    );
  }

  Widget UserDescription() {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Row(
          children: [
            SizedBox(
              width: 30,
              child: Divider(thickness: 2, color: AppColors.textColor),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Prescription Details",
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                  color: AppColors.textColor),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.user.Name,
              // "Para",
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColor),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Medical Data",
          style: TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: AppColors.textColor),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(right: 14),
          child: Text(
            widget.user.Date,

            // "Paracetamol, also known as acetaminophen,[a] is a medication used to treat fever and mild to moderate pain.[11][12] At a standard dose, paracetamol only slightly decreases body temperature;[11][13][14] it is inferior to ibuprofen in that respect,[15] and the benefits of its use for fever are unclear.[11][16][17] Paracetamol may relieve pain in acute mild migraine but only slightly in episodic tension headache.[18][19] However, the aspirin/paracetamol/caffeine combination helps with both conditions where the pain is mild and is recommended as a first-line treatment for them.[20][21] Paracetamol is effective for post-surgical pain, but it is inferior to ibuprofen.[22] The paracetamol/ibuprofen combination provides further increase in potency and is superior to either drug alone.[22][23] The pain relief paracetamol provides in osteoarthritis is small and clinically insignificant.[12][24][25] The evidence in its favor for the use in low back pain, cancer pain, and neuropathic pain is insufficient.[12][26][24][27][28][29]In the short term, common side effects of paracetamol are nausea and abdominal pain, and it seems to have tolerability similar to ibuprofen.[30][31] Chronic consumption of paracetamol may result in a drop in hemoglobin level, indicating possible gastrointestinal bleeding,[32] and abnormal liver function tests.[33] There is a consistent association of increased mortality as well as cardiovascular (stroke, myocardial infarction), gastrointestinal (ulcers, bleeding) and renal adverse effects with taking higher dose of paracetamol.[32][31][34] The drug may also increase the risk of developing hypertension.[35][36] Elevated frequency of asthma and developmental and reproductive disorders is observed in the offspring of women with prolonged use of paracetamol during pregnancy, although whether paracetamol is the true cause of this increase is unclear.[35] Some studies suggest that there is evidence for the association between paracetamol during pregnancy and autism spectrum disorder and attention deficit hyperactivity disorder, while making clear further research is required to establish any causal link, [37][38] which has prompted some calls to limit its use in pregnancy to the lowest effective dosage for the shortest possible time."),
            style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: AppColors.textColor),
          ),
        ),
      ],
    );
  }
}
