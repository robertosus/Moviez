// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moviez/theme.dart';
import 'package:moviez/widgets/disney_and_film.dart';

class search_page extends StatelessWidget {
  const search_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffF0F1F6),
          body: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 38,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Container(
                      height: 45,
                      child: TextField(
                          style: blacktextColor.copyWith(
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 12),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xff0D0846),
                                size: 28,
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(100)))),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'Search item',
                              style: blacktextColor.copyWith(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' (3)',
                                    style: blacktextColor.copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400))
                              ]),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        disney_film(
                            imageUrl: 'assets/dark_2.png',
                            name: 'The Dark II',
                            genre: 'Horror',
                            rating: 4),
                        SizedBox(
                          height: 30,
                        ),
                        disney_film(
                            imageUrl: 'assets/dark_knight.png',
                            name: 'The Dark Knight',
                            genre: 'Heroes',
                            rating: 5),
                        SizedBox(
                          height: 30,
                        ),
                        disney_film(
                            imageUrl: 'assets/dark_tower.png',
                            name: 'The Dark Tower',
                            genre: 'Action',
                            rating: 4),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 87,
                  ),
                  Container(
                    width: 220,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(37)),
                            shadowColor: Color(0xffC4C8D7),
                            elevation: 7,
                            primary: Color(0xff0D0846)),
                        onPressed: () {},
                        child: Text(
                          'Suggesst Movie',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            ],
          )),
    );
  }
}
