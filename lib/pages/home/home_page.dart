import 'package:flutter/material.dart';
import 'package:moviez_streaming_light/theme.dart';
import 'package:moviez_streaming_light/widgets/movie_card.dart';
import 'package:moviez_streaming_light/widgets/movie_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildTitle() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Moviez',
                  style: blackTextStyle.copyWith(
                    fontSize: 28,
                    fontWeight: black,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Watch much easier',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Container(
              width: 55,
              height: 45,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/button_search.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget buildCarousel() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              MovieCard(
                title: 'John Wick 4',
                genre: 'Action, Crime',
                imageUrl: 'assets/image_movie1.png',
                rating: 5,
              ),
              MovieCard(
                title: 'Bohemian',
                genre: 'Documentary',
                imageUrl: 'assets/image_movie2.png',
                rating: 3,
              ),
            ],
          ),
        ),
      );
    }

    Widget buildList() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From Disney',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: black,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MovieTile(
              title: 'Mulan Session',
              genre: 'History, War',
              imageUrl: 'assets/image_movie3.png',
              rating: 3,
            ),
            MovieTile(
              title: 'Beauty & Beast',
              genre: 'Sci-Fiction',
              imageUrl: 'assets/image_movie4.png',
              rating: 5,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          buildTitle(),
          buildCarousel(),
          buildList(),
        ],
      ),
    );
  }
}
