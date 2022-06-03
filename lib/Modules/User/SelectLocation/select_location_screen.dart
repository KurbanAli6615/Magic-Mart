import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/App_Widgets/button.dart';
import 'package:magic_mart/Utils/constants.dart';
import 'package:magic_mart/Utils/images.dart';

import '../SignInWithEmail/signin_with_email_screen.dart';

class SelectLocationScreen extends StatelessWidget {
  const SelectLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.chevron_left,
                      size: 40,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        IMG_LOCATION_LOGO,
                        height: 200,
                        width: 200,
                      ),
                      Text(
                        "Select Your Location",
                        style: TextStyle(
                          fontFamily: FONT_ABHAYALIBRE,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Swithch on your location to stay in tune with what’s happening in your area",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: FONT_ABHAYALIBRE,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Your Zone",
                  style: TextStyle(
                    fontFamily: FONT_ABHAYALIBRE,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Banasree",
                    border: OutlineInputBorder(),
                    suffixIcon: Transform.rotate(
                      angle: 1.55,
                      child: Icon(Icons.chevron_right),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Your Area",
                  style: TextStyle(
                    fontFamily: FONT_ABHAYALIBRE,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Types of your area",
                    border: OutlineInputBorder(),
                    suffixIcon: Transform.rotate(
                      angle: 1.55,
                      child: Icon(Icons.chevron_right),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                AppButton(
                  text: "Submit",
                  onTap: () {
                    Get.to(SignInWithEmailScreen());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
