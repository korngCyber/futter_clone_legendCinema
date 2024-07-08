import 'package:cenima_app/widget_of_screen/home/catecary_showing_now_showing.dart';
import 'package:cenima_app/widget_of_screen/home/explore_button.dart';
import 'package:cenima_app/widget_of_screen/home/promotion_package.dart';
import 'package:cenima_app/widget_of_screen/home/treding_movie_widget.dart';
import 'package:flutter/material.dart';

import '../widget_of_screen/home/button_choose.dart';
import '../widget_of_screen/home/list_of_day.dart';
import '../widget_of_screen/home/pupular_widget.dart';

class MyMainScreen extends StatelessWidget {
  MyMainScreen({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          "assets/images/logo.png",
          fit: BoxFit.cover,
          height: 150,
          filterQuality: FilterQuality.high,
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          child: Image.network(
            "https://images.vexels.com/media/users/3/208357/isolated/preview/e9b4f7b5e9fb81e8ed223457e22cbb57-movie-tickets-black.png",
            width: 40,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            const SizedBox(height: 15),
            //this is the button for choose cinema
            const MyCinema(),
            const SizedBox(height: 15),
            // the trending movie
            TrendingMovie(),
            const SizedBox(height: 15),
            // now showing and coming soon
            const MySoonMovie(),
            const SizedBox(height: 15),
            const MylistDay(),
            const SizedBox(height: 15),
            const Row(
              children: [
                SizedBox(width: 13),
                Text(
                  "All Showing",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 15),
            //girde menu movie
            MyPopularWidget(),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promotions",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const MyPromotion(),
            const MyExploreBtn(),

          ],
        ),
      ),
    );
  }
}
