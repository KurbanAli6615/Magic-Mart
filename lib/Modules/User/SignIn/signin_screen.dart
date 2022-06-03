import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/Utils/constants.dart';

import '../../../Utils/images.dart';
import '../MobileNumber/mobile_number_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(IMG_LOGIN_BACK),
          Column(
            children: [
              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: double.infinity,
                // color: Colors.red.withOpacity(0.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get your groceries\nwith nectar",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: FONT_ABHAYALIBRE,
                        fontWeight: FontWeight.w900,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      height: 15,
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
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Or connect with social media",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: FONT_ABHAYALIBRE,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff5383EC),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            IMG_GOOGLE_WHITE,
                            height: 25,
                            width: 25,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Continue with Google",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(MobileNumberScreen());
                      },
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xff4A66AC),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              IMG_FB_WHITE,
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Continue with Facebook",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
