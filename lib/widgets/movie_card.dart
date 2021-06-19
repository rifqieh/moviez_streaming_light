import 'package:flutter/material.dart';
import 'package:moviez_streaming_light/theme.dart';

class MovieCard extends StatelessWidget {
  final String title;
  final String genre;
  final String imageUrl;
  final int rating;

  const MovieCard({
    Key? key,
    this.title = '',
    this.genre = '',
    this.imageUrl = '',
    this.rating = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
              borderRadius: BorderRadius.circular(21),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    genre,
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: rating >= 1 ? kYellowColor : kGreyColor,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 2 ? kYellowColor : kGreyColor,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 3 ? kYellowColor : kGreyColor,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 4 ? kYellowColor : kGreyColor,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 5 ? kYellowColor : kGreyColor,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
