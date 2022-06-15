import 'package:flutter/material.dart';
import 'package:magic_mart/Utils/constants.dart';

import '../../Utils/images.dart';

class FavouriteItemView extends StatelessWidget {
  const FavouriteItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 0),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              IMG_SPRITE,
              height: 60,
              width: 60,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sprite Can",
                  style: TextStyle(
                    fontFamily: FONT_ABHAYALIBRE,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "325ml, Price",
                  style: TextStyle(
                    fontFamily: FONT_ABHAYALIBRE,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              "\$1.04",
              style: TextStyle(
                fontFamily: FONT_ABHAYALIBRE,
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
            Icon(
              Icons.chevron_right,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
