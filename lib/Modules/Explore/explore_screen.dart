import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/Utils/constants.dart';

import '../Home/item_view.dart';
import 'Category_view.dart';
import 'category_details_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          primary: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Find Products",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FONT_ABHAYALIBRE,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Card(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 8),
                        Flexible(
                          child: SizedBox(
                            height: 30,
                            child: TextField(
                              style: TextStyle(fontSize: 20),
                              cursorHeight: 23,
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 9.0),
                                hintText: "Search Store",
                                hintStyle: TextStyle(fontSize: 20),
                                alignLabelWithHint: true,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 225,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 11,
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    return CategoryView(
                      onTap: () {
                        Get.to(() => CategoryDetailScreen());
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
