import 'package:flutter/material.dart';

import '../../Utils/constants.dart';

class ProfileMenuView extends StatelessWidget {
  const ProfileMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          child: Row(
            children: [
              Icon(
                Icons.payment,
              ),
              SizedBox(width: 15),
              Text(
                "Orders",
                style: TextStyle(
                  fontFamily: FONT_ABHAYALIBRE,
                  fontSize: 17,
                ),
              ),
              Spacer(),
              Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
