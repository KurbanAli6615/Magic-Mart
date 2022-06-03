import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/Utils/constants.dart';
import 'package:magic_mart/Utils/images.dart';

import '../../../App_Widgets/button.dart';
import '../../User/SignIn/signin_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            IMG_MEN,
            fit: BoxFit.fitWidth,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Column(
            children: [
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: Column(
                  children: [
                    Image.asset(
                      IMG_CARROT,
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Welcome\n to our store",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontFamily: FONT_ABHAYALIBRE,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Ger your groceries in as fast as one hour",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontFamily: FONT_ABHAYALIBRE,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AppButton(
                      text: "Get Started",
                      onTap: () {
                        Get.to(const SignInScreen());
                      },
                    ),
                    const SizedBox(
                      height: 40,
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
