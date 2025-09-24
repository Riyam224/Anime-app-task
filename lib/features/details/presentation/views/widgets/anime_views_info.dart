import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimeViewsInfo extends StatelessWidget {
  const AnimeViewsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 👈 auto spacing
        children: const [
          AnimeItemInfo(
            image: 'assets/images/eye_icon.png',
            theWidth: 3,
            animeViews: '2.3M views',
          ),
          SizedBox(width: 40),
          AnimeItemInfo(
            image: 'assets/images/clapping_icon.png',
            theWidth: 3,
            animeViews: '2K clap',
          ),
          SizedBox(width: 40),
          AnimeItemInfo(
            image: 'assets/images/season_icon.png',
            theWidth: 3,
            animeViews: '4 Seasons',
          ),
        ],
      ),
    );
  }
}

class AnimeItemInfo extends StatelessWidget {
  const AnimeItemInfo({
    super.key,
    required this.image,
    required this.theWidth,
    required this.animeViews,
  });
  final String image;
  final double theWidth;
  final String animeViews;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image, width: 17, height: 16),
        SizedBox(width: theWidth),
        Text(
          textAlign: TextAlign.center,
          animeViews,
          style: TextStyle(
            color: Color(0xffE5E3E9),
            fontFamily: 'Raleway',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
