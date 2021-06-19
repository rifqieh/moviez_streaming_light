import 'package:flutter/material.dart';
import 'package:moviez_streaming_light/theme.dart';
import 'package:moviez_streaming_light/widgets/movie_tile.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildSearchButton() {
      return Container(
        width: double.infinity,
        height: 45,
        margin: EdgeInsets.only(top: 38),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/button_search_filled.png',
            ),
          ),
        ),
      );
    }

    Widget buildResult() {
      return Container(
        margin: EdgeInsets.only(top: 35),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Search Result',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: black,
                  ),
                ),
                Text(
                  ' (3)',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            MovieTile(
              title: 'The Dark II',
              genre: 'Horror',
              imageUrl: 'assets/image_movie5.png',
              rating: 4,
            ),
            MovieTile(
              title: 'The Dark Knight',
              genre: 'Heroes',
              imageUrl: 'assets/image_movie6.png',
              rating: 5,
            ),
            MovieTile(
              title: 'The Dark Tower',
              genre: 'Action',
              imageUrl: 'assets/image_movie7.png',
              rating: 4,
            ),
          ],
        ),
      );
    }

    Widget buildSuggestButton() {
      return Container(
        width: 220,
        height: 50,
        margin: EdgeInsets.only(
          top: 73,
          bottom: 80,
        ),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: kBlackColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(37),
            ),
          ),
          child: Text(
            'Suggest Movie',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            children: [
              buildSearchButton(),
              buildResult(),
              buildSuggestButton(),
            ],
          ),
        ),
      ),
    );
  }
}
