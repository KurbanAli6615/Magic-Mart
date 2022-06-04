import 'package:flutter/material.dart';
import 'package:magic_mart/Utils/colors.dart';
import 'package:magic_mart/Utils/constants.dart';
import '../../Utils/images.dart';

class ItemView extends StatelessWidget {
  const ItemView({required this.onAddTap});

  final VoidCallback onAddTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Image.asset(
              IMG_BANANA,
              height: 100,
              width: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(0),
              alignment: Alignment.centerLeft,
              child: Text(
                "Organic Bananas",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: FONT_ABHAYALIBRE,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              padding: EdgeInsets.all(0),
              alignment: Alignment.centerLeft,
              child: Text(
                "7pcs, Priceg",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: FONT_ABHAYALIBRE,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "\$4.99",
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: FONT_ABHAYALIBRE,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Material(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(20),
                  color: COLOR_THEME,
                  child: InkWell(
                    onTap: onAddTap,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
