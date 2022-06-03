import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/colors.dart';
import '../../../Utils/constants.dart';
import '../../../Utils/images.dart';
import '../SelectLocation/select_location_screen.dart';

class VerifyOTPScreen extends StatelessWidget {
  const VerifyOTPScreen({Key? key}) : super(key: key);

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
                "Enter your 4-digit code",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  fontFamily: FONT_ABHAYALIBRE,
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Code",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  fontFamily: FONT_ABHAYALIBRE,
                ),
              ),
              TextField(
                maxLength: 4,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "- - - -",
                  border: InputBorder.none,
                ),
              ),
              Spacer(),
              SizedBox(
                height: 75,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend Code",
                    style: TextStyle(
                      color: COLOR_THEME,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Next",
        onPressed: () {
          Get.to(SelectLocationScreen());
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
