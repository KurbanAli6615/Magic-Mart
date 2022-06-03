import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/Utils/colors.dart';
import 'package:magic_mart/Utils/images.dart';

import '../get_started/get_started_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 2), () => Get.offAll(const GetStartedScreen()));
    return Scaffold(
      body: Center(
        child: Image.asset(
          IMG_LOGO,
          height: 250,
          width: 250,
        ),
      ),
      backgroundColor: COLOR_THEME,
    );
  }
}
