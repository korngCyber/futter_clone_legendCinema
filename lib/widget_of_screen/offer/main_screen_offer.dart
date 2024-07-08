import 'package:cenima_app/widget_of_screen/offer/offer_card_menu.dart';
import 'package:cenima_app/widget_of_screen/offer/premium_benefit.dart';
import 'package:flutter/material.dart';
class MyOffers extends StatelessWidget {
  const MyOffers({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Offers',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/offer.png'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "what's we offer",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                  ),
                  MyofferMenuCard(),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Premium benefits",
                          style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Mypremuimcard(),
                  SizedBox(height: 25),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
