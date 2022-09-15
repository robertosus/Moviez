import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moviez/theme.dart';

class disney_film extends StatelessWidget {
  String imageUrl;
  String name;
  String genre;
  int rating;
  disney_film(
      {required this.imageUrl,
      required this.name,
      required this.genre,
      required this.rating,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          width: 100,
          height: 127,
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
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
            SizedBox(
              height: 20,
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
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
