import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/Utils/constants.dart';
import 'package:magic_mart/Utils/images.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                children: [
                  Row(
                    children: [
                      Icon(Icons.remove),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
