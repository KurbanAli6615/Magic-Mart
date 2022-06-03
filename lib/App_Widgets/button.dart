import 'package:flutter/material.dart';
import 'package:magic_mart/Utils/colors.dart';
import 'package:magic_mart/Utils/constants.dart';

class AppButton extends StatelessWidget {
  AppButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.color = COLOR_THEME})
      : super(key: key);

  VoidCallback onTap;
  String text;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(10),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontFamily: FONT_ABHAYALIBRE,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
      ),
    );
  }
}
