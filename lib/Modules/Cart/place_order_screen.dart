import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/App_Widgets/button.dart';
import 'package:magic_mart/Modules/OrderDetails/order_accept_screen.dart';
import 'package:magic_mart/Utils/constants.dart';
import 'package:magic_mart/Utils/images.dart';

class PlaceOrderScreen extends StatelessWidget {
  const PlaceOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "Checkout",
                style: TextStyle(
                  fontFamily: FONT_ABHAYALIBRE,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Image.asset(
                  IMG_CANCEL,
                  height: 17,
                  width: 17,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Delivery",
                style: TextStyle(
                  fontFamily: FONT_ABHAYALIBRE,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade500,
                ),
              ),
              Spacer(),
              Text(
                "Select Method",
                style: TextStyle(
                  fontFamily: FONT_ABHAYALIBRE,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.black,
                size: 30,
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pament",
                style: TextStyle(
                  fontFamily: FONT_ABHAYALIBRE,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade500,
                ),
              ),
              Spacer(),
              Image.asset(
                IMG_CARD,
                height: 30,
                width: 30,
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.black,
                size: 30,
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Promo Code",
                style: TextStyle(
                  fontFamily: FONT_ABHAYALIBRE,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade500,
                ),
              ),
              Spacer(),
              Text(
                "Pick discount",
                style: TextStyle(
                  fontFamily: FONT_ABHAYALIBRE,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.black,
                size: 30,
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total Cost",
                style: TextStyle(
                  fontFamily: FONT_ABHAYALIBRE,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade500,
                ),
              ),
              Spacer(),
              Text(
                "\$13.97",
                style: TextStyle(
                  fontFamily: FONT_ABHAYALIBRE,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.black,
                size: 30,
              )
            ],
          ),
          SizedBox(height: 40),
          Text(
            "By placing an order you agree to our\nTerms And Conditions",
            style: TextStyle(
              fontFamily: FONT_ABHAYALIBRE,
              fontSize: 19,
              fontWeight: FontWeight.w300,
              color: Colors.grey.shade700,
            ),
          ),
          SizedBox(height: 40),
          AppButton(
            text: "Place Order",
            onTap: () {
              Navigator.pop(context);
              Get.to(() => OrderAcceptScreen());
            },
          ),
        ],
      ),
    );
  }
}
