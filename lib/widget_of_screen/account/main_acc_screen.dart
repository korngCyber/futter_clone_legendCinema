import 'package:cenima_app/widget_of_screen/account/Item_seeting.dart';
import 'package:cenima_app/widget_of_screen/account/Item_title.dart';
import 'package:cenima_app/widget_of_screen/account/item_in_more/about_us_screen.dart';
import 'package:cenima_app/widget_of_screen/account/item_in_more/change_password_screen.dart';
import 'package:cenima_app/widget_of_screen/account/item_in_more/language_screen.dart';
import 'package:cenima_app/widget_of_screen/account/item_in_more/motification_screen.dart';
import 'package:cenima_app/widget_of_screen/account/item_in_more/new_and_activity_screen.dart';
import 'package:cenima_app/widget_of_screen/account/membership_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'item_in_more/contact_us_screen.dart';
import 'item_in_more/privacy_screen.dart';
import 'item_in_more/purchase_screen.dart';
import 'item_in_more/term_condition.dart';
import 'item_in_more/update_account_profile.dart';

class MyMainAccount extends StatelessWidget {
  const MyMainAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Account",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          GestureDetector(
            onTap: ()=>Get.to(const MyUpdateAccount()),
            child: CircleAvatar(

              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Colors.red[800],
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const MyMemberCard(),
            const MyItemTittle(
              name: "Tickets",
            ),
            GestureDetector(
              onTap: () => Get.to(const MyPurchase()),
              child: const MyItem(
                icon: Icon(
                  CupertinoIcons.tickets_fill,
                ),
                title: "Puchase",
              ),
            ),
            const MyItemTittle(
              name: "Languages",
            ),
            GestureDetector(
              onTap: () => Get.to(const Mylanguage()),
              child: const MyItem(
                icon: Icon(CupertinoIcons.pencil_circle_fill),
                title: "English",
              ),
            ),
            const MyItemTittle(
              name: "Account",
            ),
            GestureDetector(
              onTap: () => Get.to(const MyChangepassword()),
              child: const MyItem(
                icon: Icon(CupertinoIcons.person_alt),
                title: "Change Password",
              ),
            ),
            const MyItemTittle(
              name: "What's new?",
            ),
            GestureDetector(
              onTap: () => Get.to(const MyNewsActivity()),
              child: const MyItem(
                icon: Icon(CupertinoIcons.news),
                title: "New & Activity ",
              ),
            ),
            const MyItemTittle(
              name: "Notification",
            ),
            GestureDetector(
              onTap: () => Get.to(const MyNotification_off_on()),
              child: const MyItem(
                icon: Icon(CupertinoIcons.bell_fill),
                title: "Notification",
              ),
            ),
            const MyItemTittle(
              name: "About us",
            ),
            GestureDetector(
              onTap: () => Get.to(const MyAboutUS()),
              child: const MyItem(
                icon: Icon(CupertinoIcons.person_2_square_stack_fill),
                title: "About us",
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(const MyContactUS()),
              child: const MyItem(
                icon: Icon(CupertinoIcons.phone_down_fill),
                title: "Contact us ",
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(const MyPrivacy()),
              child: const MyItem(
                icon: Icon(CupertinoIcons.person_crop_square_fill),
                title: "Privacy Policy",
              ),
            ),
            GestureDetector(
               onTap: () => Get.to(const MyTermCondition()),
              child: const MyItem(
                icon: Icon(CupertinoIcons.list_bullet),
                title: "Term Condition",
              ),
            ),
            const MyItem(
              icon: Icon(CupertinoIcons.arrow_right_arrow_left_circle),
              title: "Logout",
            ),
          ],
        ),
      ),
    );
  }
}
