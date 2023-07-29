import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies/view/section_action_movies.dart';
import 'package:movies/view/section_adventure_movies.dart';
import 'package:movies/view/section_all_movies.dart';
import 'package:movies/view/section_comedy_movies.dart';
import 'package:movies/widgets/custom_new_movie.dart';
import 'package:get/get.dart';

import '../controller/home_screen_logic.dart';
import '../core/utils/app_color.dart';
import '../widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    //  print("build ics called");
    return Scaffold(
    //  backgroundColor: Colors.black,
      drawer: Drawer(child: CustomDrawer(),),
      appBar: AppBar(
        title: Text("Movies Netflix"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search),
          )
        ],
      ),
      body:

      ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              height: MediaQuery.of(context).size.height / 2,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              viewportFraction: 0.8,
            ),
            items: [
              new_movie(
                image: 'images/upcoming1.jpg',
              ),
              new_movie(
                image: 'images/upcoming2.jpg',
              ),
              new_movie(
                image: 'images/upcoming3.jpg',
              ),
              new_movie(
                image: 'images/upcoming4.jpg',
              ),
              new_movie(image: "images/Welcome-to-Newyork.jpg"),
              new_movie(image: "images/THE ARCHER.jpg"),
              new_movie(image: "images/Daddy Day care.jpg"),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          TabBar(
            controller: controller.tabController,
            unselectedLabelColor: Colors.white.withOpacity(0.5),
            isScrollable: true,
            indicator: BoxDecoration(
              color: AppColors.SecondryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            labelPadding: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.only(left: 10),
            tabs: [
              Tab(
                text: "All",
              ),
              Tab(
                text: "Action",
              ),
              Tab(
                text: "Adventure",
              ),
              Tab(
                text: "comedy",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Obx(() => [
                  AllMovies(), //all
                  ActionMovies(), ////action
                  AdventureMovies(), //Adventrure
                  ComedyMovies(), //comedy
                ][controller.currentIndex.value]),
          ),
        ],
      ),
    );
  }
}
