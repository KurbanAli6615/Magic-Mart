import 'package:flutter/material.dart';
import 'package:magic_mart/Utils/constants.dart';

import '../../Utils/images.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key, required this.onTap}) : super(key: key);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    color: Colors.grey.shade500,
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ]),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    IMG_FRUIT_BASKET,
                    height: 120,
                    width: 120,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Frash Fruits\n & Vegetable",
                    style: TextStyle(
                      fontFamily: FONT_ABHAYALIBRE,
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
