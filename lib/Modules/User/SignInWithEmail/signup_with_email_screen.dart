import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../App_Widgets/button.dart';
import '../../../Utils/colors.dart';
import '../../../Utils/constants.dart';
import '../../../Utils/images.dart';

class SignUpWithEmailScreen extends StatelessWidget {
  const SignUpWithEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      IMG_CARROT_COLORED,
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontFamily: FONT_ABHAYALIBRE,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Enter your credentials to continue",
                  style: TextStyle(
                    fontFamily: FONT_ABHAYALIBRE,
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Username",
                  style: TextStyle(
                    fontFamily: FONT_ABHAYALIBRE,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Email",
                  style: TextStyle(
                    fontFamily: FONT_ABHAYALIBRE,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Passsword",
                  style: TextStyle(
                    fontFamily: FONT_ABHAYALIBRE,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Passsword",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "By continuing you agree to our Terms of Service and Privacy Policy.",
                  style: TextStyle(
                    fontFamily: FONT_ABHAYALIBRE,
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 30),
                AppButton(
                    text: "Sing Up",
                    onTap: () {
                      Get.back();
                    }),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        fontFamily: FONT_ABHAYALIBRE,
                        fontSize: 17,
                        // color: COLOR_THEME,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "Singin",
                        style: TextStyle(
                          fontFamily: FONT_ABHAYALIBRE,
                          color: COLOR_THEME,
                          fontSize: 17,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
