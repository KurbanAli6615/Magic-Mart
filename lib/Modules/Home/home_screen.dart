import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/Utils/colors.dart';
import 'package:magic_mart/Utils/constants.dart';

import '../../Utils/images.dart';
import '../ProductDetails/product_details_screen.dart';
import 'item_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          primary: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      IMG_CARROT_COLORED,
                      height: 40,
                      width: 40,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey.shade600,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Dhaka, Banassre",
                      style: TextStyle(
                        fontFamily: FONT_ABHAYALIBRE,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextField(
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                  ),
                ),
                SizedBox(height: 15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    IMG_SLIDER,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exclusive Offer",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: FONT_ABHAYALIBRE,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(
                          color: COLOR_THEME,
                          fontSize: 19,
                          fontFamily: FONT_ABHAYALIBRE,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 245,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 11,
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    return ItemView(
                      onItemTap: () {
                        Get.to(() => ProductDetailsScreen());
                      },
                      onAddTap: () {
                        Get.snackbar(
                          "Added",
                          "Added Item $index",
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
