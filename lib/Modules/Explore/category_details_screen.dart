import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Utils/constants.dart';
import '../Home/item_view.dart';

class CategoryDetailScreen extends StatelessWidget {
  const CategoryDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.chevron_left,
                        size: 40,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Beverages",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: FONT_ABHAYALIBRE,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.filter_alt_rounded,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 245,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 11,
                  itemBuilder: (BuildContext context, index) {
                    return ItemView(
                      onItemTap: () {
                        // Get.to(() => ProductDetailsScreen());
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
