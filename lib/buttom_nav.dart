import 'package:cenima_app/screen/main_screen.dart';
import 'package:cenima_app/widget_of_screen/account/main_acc_screen.dart';
import 'package:cenima_app/widget_of_screen/cinema/main_screen_cinema.dart';
import 'package:cenima_app/widget_of_screen/food_and_beverage/main_food_screen.dart';
import 'package:cenima_app/widget_of_screen/offer/main_screen_offer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MyButtonNav extends StatelessWidget {
  MyButtonNav({Key? key}) : super(key: key); // Corrected the Key parameter

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: "Home",
        activeColorPrimary: CupertinoColors.systemRed,
        inactiveColorPrimary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.tickets_fill),
        title: "Offers",
        activeColorPrimary: CupertinoColors.systemRed,
        inactiveColorPrimary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.location_solid),
        title: "Cinemas",
        activeColorPrimary: CupertinoColors.systemRed,
        inactiveColorPrimary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.flame_fill),
        title: "Foods",
        activeColorPrimary: CupertinoColors.systemRed,
        inactiveColorPrimary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person_alt),
        title: "Accounts",
        activeColorPrimary: CupertinoColors.systemRed,
        inactiveColorPrimary: CupertinoColors.white,
      ),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      MyMainScreen(),
      const MyOffers(),
      const MyMainCinema(),
      const MainFood(),
      const MyMainAccount(),
    ];
  }

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.black12,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
     // hideNavigationBarWhenKeyboardShows: true,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style1,
    );
  }
}
