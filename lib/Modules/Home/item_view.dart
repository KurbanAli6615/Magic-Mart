import 'package:flutter/material.dart';
import 'package:magic_mart/Utils/colors.dart';
import 'package:magic_mart/Utils/constants.dart';
import '../../Utils/images.dart';

class ItemView extends StatelessWidget {
  const ItemView({required this.onAddTap, required this.onItemTap});

  final VoidCallback onAddTap;
  final VoidCallback onItemTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onItemTap,
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 5),
              child: Image.asset(
                IMG_BANANA,
                height: 80,
                width: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
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
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
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
      ),
    );
  }
}
