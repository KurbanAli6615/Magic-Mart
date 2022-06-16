import 'package:flutter/material.dart';
import 'package:magic_mart/Modules/Profile/profile_menu_view.dart';
import 'package:magic_mart/Utils/colors.dart';
import 'package:magic_mart/Utils/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            primary: true,
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        "https://miro.medium.com/max/1400/0*0fClPmIScV5pTLoE.jpg",
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "KurbanAli Masu",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: FONT_ABHAYALIBRE,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.edit_sharp,
                              size: 20,
                              color: COLOR_THEME,
                            ),
                          ],
                        ),
                        SizedBox(height: 2),
                        Text(
                          "coder@gmail.com",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey,
                            fontFamily: FONT_ABHAYALIBRE,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 6,
                  itemBuilder: ((context, index) {
                    return ProfileMenuView();
                  }),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: COLOR_THEME),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.logout, size: 20),
                        Text(
                          "Log Out",
                          style: TextStyle(
                            fontFamily: FONT_ABHAYALIBRE,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 20)
                      ],
                    ),
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
