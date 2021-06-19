import 'package:flutter/material.dart';
import 'package:moviez_streaming_light/theme.dart';

class MovieTile extends StatelessWidget {
  final String title;
  final String genre;
  final String imageUrl;
  final int rating;

  const MovieTile({
    Key? key,
    this.title = '',
    this.genre = '',
    this.imageUrl = '',
    this.rating = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 127,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
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
              SizedBox(
                height: 20,
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
