import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/App_Widgets/button.dart';
import 'package:magic_mart/Modules/Home/home_tabbar_screen.dart';
import 'package:magic_mart/Utils/colors.dart';
import 'package:magic_mart/Utils/constants.dart';
import 'package:magic_mart/Utils/images.dart';

import '../../Home/home_screen.dart';
import 'signup_with_email_screen.dart';

class SignInWithEmailScreen extends StatelessWidget {
  const SignInWithEmailScreen({Key? key}) : super(key: key);

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
                  "Loging",
                  style: TextStyle(
                    fontFamily: FONT_ABHAYALIBRE,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Enter your emails and password",
                  style: TextStyle(
                    fontFamily: FONT_ABHAYALIBRE,
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 30),
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
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontFamily: FONT_ABHAYALIBRE,
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 20),
                AppButton(
                    text: "Log In",
                    onTap: () {
                      Get.to(() => HomeTabbarScreen());
                    }),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(
                        fontFamily: FONT_ABHAYALIBRE,
                        fontSize: 17,
                        // color: COLOR_THEME,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(SignUpWithEmailScreen());
                      },
                      child: Text(
                        "Singup",
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
