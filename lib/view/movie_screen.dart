import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movies/core/utils/app_color.dart';

class MovieScreen extends StatelessWidget {
  String image;
  String nameSection;


  MovieScreen(this.image,this.nameSection,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height /2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/${image}.jpg"),
                      )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 35, horizontal: 10),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColors.PrimaryColor,
                        size: 28,
                      ),
                    ), //////kkkkkk
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  image,
                  style: TextStyle(
                    color:  AppColors.PrimaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "PG-13",
                      style: TextStyle(
                        color: AppColors.PrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      nameSection,
                      style: TextStyle(
                        color:  AppColors.PrimaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "2.30 hrs",
                      style: TextStyle(
                        color: AppColors.PrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 25,
                  unratedColor:  AppColors.PrimaryColor,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Thor: Love and Thunder is an upcoming American superhero film, based on the character Thor, created by Marvel Comics."
                      " The film is directed by Taika Waititi and stars Chris Hemsworth, Tessa Thompson, Natalie Portman, Christian Bale,"
                      " Chris Pratt, Jamie Alexander, Pom Klementieff, Dave Batista, Karen Gillan, Sean Gunn, Jeff Goldblum",
                  style: TextStyle(
                    color:  AppColors.PrimaryColor,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Material(
              color:  AppColors.SecondryColor,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 30,
                        color:  AppColors.PrimaryColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Add to wishist",
                        style: TextStyle(
                            fontSize: 18,
                            color:  AppColors.PrimaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Material(
              color:  AppColors.SecondryColor,
              borderRadius: BorderRadius.circular(30),
              child: InkWell(
                onTap: () {},
                child: Container(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.play_arrow_rounded,
                      size: 50,
                      color: AppColors.PrimaryColor,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
