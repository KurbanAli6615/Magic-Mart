import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/Modules/Favourite/favourite_item_view.dart';

import '../../App_Widgets/button.dart';
import '../../Utils/constants.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "Favorurite",
                style: TextStyle(
                  fontFamily: FONT_ABHAYALIBRE,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  primary: true,
                  itemBuilder: (context, index) {
                    return FavouriteItemView();
                  },
                  itemCount: 10,
                ),
              ),
              SizedBox(height: 10),
              AppButton(
                text: "Add All To Cart",
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
