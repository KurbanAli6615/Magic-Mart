import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/Utils/colors.dart';
import 'package:magic_mart/Utils/constants.dart';

import '../../../Utils/images.dart';
import 'verify_otp_screen.dart';

class MobileNumberScreen extends StatelessWidget {
  const MobileNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                ],
              ),
              SizedBox(height: 40),
              Text(
                "Enter your mobile number",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  fontFamily: FONT_ABHAYALIBRE,
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Mobile Number",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  fontFamily: FONT_ABHAYALIBRE,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    IMG_BANGLADESH_FLAG,
                    height: 35,
                    width: 35,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "+880",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: "Phone number",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Next",
        onPressed: () {
          Get.to(VerifyOTPScreen());
        },
        backgroundColor: COLOR_THEME,
        child: const Icon(
          Icons.chevron_right,
          size: 30,
        ),
      ),
    );
  }
}
