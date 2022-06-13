import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/App_Widgets/button.dart';
import 'package:magic_mart/Utils/constants.dart';
import 'package:magic_mart/Utils/images.dart';

class OrderAcceptScreen extends StatelessWidget {
  const OrderAcceptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Row(
              children: [
                Spacer(),
                Image.asset(
                  IMG_ORDER_ACCEPT,
                  height: 200,
                  width: 200,
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Your Order has been\naccepted",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: FONT_ABHAYALIBRE,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Your items has been placcd and is on \nsit’s way to being processed",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: FONT_ABHAYALIBRE,
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            Spacer(),
            AppButton(text: "Track Order", onTap: () {}),
            SizedBox(height: 10),
            AppButton(
              text: "Back to home",
              onTap: () {
                Get.back();
              },
              color: Colors.white,
              fontColor: Colors.black,
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
