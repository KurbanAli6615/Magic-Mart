import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/App_Widgets/button.dart';
import 'package:magic_mart/Utils/constants.dart';

import 'cart_item_view.dart';
import 'place_order_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

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
                "My Cart",
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
                    return CartItemView();
                  },
                  itemCount: 10,
                ),
              ),
              SizedBox(height: 10),
              AppButton(
                text: "Go to Checkout",
                onTap: () {
                  Get.bottomSheet(
                    PlaceOrderScreen(),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
