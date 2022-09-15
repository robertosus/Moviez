// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moviez/pages/search.dart';
import 'package:moviez/theme.dart';
import 'package:moviez/widgets/disney_and_film.dart';
import 'package:moviez/widgets/recommend_film.dart';

class menu_film extends StatelessWidget {
  const menu_film({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F1F6),
        //** Menu
        body: ListView(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Moviez',
                            style: blacktextColor.copyWith(
                                fontSize: 28, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Watch much easier',
                            style: greytextColor.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => search_page(),
                            )),
                        child: Image.asset(
                          'assets/search.png',
                          width: 22,
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    recommend_film(
                      imageUrl: 'assets/john_wick.png',
                      nameFilm: 'John Wick',
                      genre: 'Actions, Thriller',
                      rating: 5,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    recommend_film(
                        imageUrl: 'assets/bohemian.png',
                        nameFilm: 'Bohemian',
                        genre: 'Documentary',
                        rating: 3),
                    SizedBox(
                      width: 24,
                    ),
                    recommend_film(
                        imageUrl: 'assets/lion_king.png',
                        nameFilm: 'The Lion King',
                        genre: 'Animation',
                        rating: 4),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From Disney',
                      style: blacktextColor.copyWith(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    disney_film(
                        imageUrl: 'assets/wulan.png',
                        name: 'Wulan',
                        genre: 'History, War',
                        rating: 3),
                    SizedBox(
                      height: 30,
                    ),
                    disney_film(
                        imageUrl: 'assets/beauty.png',
                        name: 'Beauty & Beast',
                        genre: 'Sci-Fiction',
                        rating: 5),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
