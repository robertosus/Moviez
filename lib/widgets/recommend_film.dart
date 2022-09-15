import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moviez/theme.dart';

class recommend_film extends StatelessWidget {
  String imageUrl;
  String nameFilm;
  String genre;
  int rating;
  recommend_film(
      {required this.imageUrl,
      required this.nameFilm,
      required this.genre,
      required this.rating,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 300,
          height: 207,
        ),
        SizedBox(
          height: 19,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameFilm,
                  style: blacktextColor.copyWith(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  genre,
                  style: greytextColor.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              width: 87,
            ),
            Row(
              children: [
                Image.asset(
                  1 <= rating ? 'assets/rating.png' : 'assets/star_grey.png',
                  width: 18,
                ),
                SizedBox(
                  width: 2,
                ),
                Image.asset(
                  2 <= rating ? 'assets/rating.png' : 'assets/star_grey.png',
                  width: 18,
                ),
                SizedBox(
                  width: 2,
                ),
                Image.asset(
                  3 <= rating ? 'assets/rating.png' : 'assets/star_grey.png',
                  width: 18,
                ),
                SizedBox(
                  width: 2,
                ),
                Image.asset(
                  4 <= rating ? 'assets/rating.png' : 'assets/star_grey.png',
                  width: 18,
                ),
                SizedBox(
                  width: 2,
                ),
                Image.asset(
                  5 <= rating ? 'assets/rating.png' : 'assets/star_grey.png',
                  width: 18,
                ),
                SizedBox(
                  width: 2,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
