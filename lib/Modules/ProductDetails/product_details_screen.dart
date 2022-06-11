import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/App_Widgets/button.dart';
import 'package:magic_mart/Utils/colors.dart';
import 'package:magic_mart/Utils/constants.dart';
import 'package:magic_mart/Utils/images.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: true,
        top: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.ios_share_outlined,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              IMG_APPLE,
              height: 300,
              width: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Naturel Red Apple",
                    style: TextStyle(
                      fontFamily: FONT_ABHAYALIBRE,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "1kg, Price",
                    style: TextStyle(
                      fontFamily: FONT_ABHAYALIBRE,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.remove,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.add,
                        color: COLOR_THEME,
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "\$4.99",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: FONT_ABHAYALIBRE,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Theme(
              data: ThemeData().copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                backgroundColor: Colors.transparent,
                title: Text(
                  "Product Detail",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: FONT_ABHAYALIBRE,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: FONT_ABHAYALIBRE,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: AppButton(text: "Add To Basket", onTap: () {}),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
