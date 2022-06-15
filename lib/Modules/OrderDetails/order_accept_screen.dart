import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/App_Widgets/button.dart';
import 'package:magic_mart/Utils/constants.dart';
import 'package:magic_mart/Utils/images.dart';

class OrderAcceptScreen extends StatelessWidget {
  const OrderAcceptScreen({Key? key}) : super(key: key);
  void showCustomDialog(
      {required BuildContext context, required Widget child}) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "",
      transitionDuration: Duration(milliseconds: 300),
      pageBuilder: (_, __, ___) {
        return GestureDetector(
          child: Center(
            child: child,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Row(
              children: [
                Spacer(),
                Image.asset(
                  IMG_ORDER_ACCEPT,
                  height: 200,
                  width: 200,
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Your Order has been\naccepted",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: FONT_ABHAYALIBRE,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Your items has been placcd and is on \nsit’s way to being processed",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: FONT_ABHAYALIBRE,
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            Spacer(),
            AppButton(
                text: "Track Order",
                onTap: () {
                  showCustomDialog(
                    context: context,
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: 620,
                        width: MediaQuery.of(context).size.width * 0.85,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () => Navigator.pop(context),
                                    child: Image.asset(
                                      IMG_CANCEL,
                                      height: 15,
                                      width: 15,
                                      color: Colors.grey.shade600,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 30),
                              Image.asset(
                                IMG_FRUIT_BAG,
                                height: 250,
                                width: 250,
                              ),
                              SizedBox(height: 30),
                              Text(
                                "Oops! Order Failed",
                                style: TextStyle(
                                  fontFamily: FONT_ABHAYALIBRE,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Something went tembly wrong.",
                                style: TextStyle(
                                  fontFamily: FONT_ABHAYALIBRE,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              SizedBox(height: 50),
                              AppButton(
                                  text: "Please Try Again",
                                  onTap: () {
                                    Navigator.pop(context);
                                  }),
                              SizedBox(height: 10),
                              AppButton(
                                text: "Back to home",
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                color: Colors.transparent,
                                fontColor: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
            SizedBox(height: 10),
            AppButton(
              text: "Back to home",
              onTap: () {
                Get.back();
              },
              color: Colors.white,
              fontColor: Colors.black,
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
