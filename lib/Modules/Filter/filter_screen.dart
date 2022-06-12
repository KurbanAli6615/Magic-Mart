import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_mart/App_Widgets/button.dart';
import 'package:magic_mart/App_Widgets/checkbox_view.dart';

import '../../Utils/constants.dart';
import '../../Utils/images.dart';

class FilterScreen extends StatelessWidget {
  FilterScreen({Key? key}) : super(key: key);

  RxList<CheckBoxData> checkBoxList1 = <CheckBoxData>[
    CheckBoxData(name: "Egg", value: false),
    CheckBoxData(name: "Noodles & Pasta", value: false),
    CheckBoxData(name: "Chips & Crisps", value: false),
    CheckBoxData(name: "Fast Food", value: false),
  ].obs;
  RxList<CheckBoxData> checkBoxList2 = <CheckBoxData>[
    CheckBoxData(name: "Individual Callection", value: false),
    CheckBoxData(name: "Cocola", value: false),
    CheckBoxData(name: "Ifad", value: false),
    CheckBoxData(name: "Kazi Farmas", value: false),
  ].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          primary: true,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Image.asset(IMG_CANCEL, height: 20, width: 20),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Filters",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: FONT_ABHAYALIBRE,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    SizedBox(width: 40)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontFamily: FONT_ABHAYALIBRE,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(height: 10),
                Obx(
                  () => ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) {
                      return CheckBoxView(
                        onWidgetTap: () {
                          checkBoxList1[index].value =
                              !checkBoxList1[index].value;
                          checkBoxList1.refresh();
                        },
                        onTap: (newValue) {
                          checkBoxList1[index].value = newValue ?? false;
                          checkBoxList1.refresh();
                        },
                        value: checkBoxList1[index].value,
                        text: checkBoxList1[index].name,
                      );
                    },
                    itemCount: checkBoxList1.length,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Text(
                      "Brand",
                      style: TextStyle(
                        fontFamily: FONT_ABHAYALIBRE,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(height: 10),
                Obx(
                  () => ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) {
                      return CheckBoxView(
                        onWidgetTap: () {
                          checkBoxList2[index].value =
                              !checkBoxList2[index].value;
                          checkBoxList2.refresh();
                        },
                        onTap: (newValue) {
                          checkBoxList2[index].value = newValue ?? false;
                          checkBoxList2.refresh();
                        },
                        value: checkBoxList2[index].value,
                        text: checkBoxList2[index].name,
                      );
                    },
                    itemCount: checkBoxList2.length,
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AppButton(
                    text: "Apply Filter",
                    onTap: () {
                      Get.back();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
