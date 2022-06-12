import 'package:flutter/material.dart';
import 'package:magic_mart/Utils/colors.dart';

import '../Utils/constants.dart';

class CheckBoxView extends StatelessWidget {
  CheckBoxView({
    Key? key,
    required this.onTap,
    required this.onWidgetTap,
    required this.value,
    this.text = "",
  }) : super(key: key);

  final Function(bool?) onTap;
  final VoidCallback onWidgetTap;
  final bool value;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onWidgetTap,
      child: Container(
        width: double.infinity,
        color: Colors.transparent,
        padding: EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Transform.scale(
                scale: 1.3,
                child: Checkbox(
                  value: value,
                  onChanged: onTap,
                  activeColor: COLOR_THEME,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  fontFamily: FONT_ABHAYALIBRE,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckBoxData {
  CheckBoxData({this.name = "", this.value = false});
  String name;
  bool value;
}
