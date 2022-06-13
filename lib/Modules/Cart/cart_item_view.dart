import 'package:flutter/material.dart';
import 'package:magic_mart/Utils/constants.dart';

import '../../Utils/colors.dart';
import '../../Utils/images.dart';

class CartItemView extends StatelessWidget {
  const CartItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset(
                IMG_TOMATO,
                height: 80,
                width: 80,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Bell Pepper Red",
                        style: TextStyle(
                          fontFamily: FONT_ABHAYALIBRE,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset(
                          IMG_CANCEL,
                          height: 15,
                          width: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "1kg, Price",
                    style: TextStyle(
                      fontFamily: FONT_ABHAYALIBRE,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
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
                            "10",
                            style: TextStyle(
                              fontSize: 20,
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
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          "\$4.99",
                          style: TextStyle(
                            fontFamily: FONT_ABHAYALIBRE,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
