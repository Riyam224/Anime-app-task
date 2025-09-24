// ignore_for_file: deprecated_member_use

import 'package:clean_arch_task/core/routing/app_routes.dart';
import 'package:clean_arch_task/core/theming/app_colors.dart';
import 'package:clean_arch_task/core/theming/app_styles';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnimeList extends StatelessWidget {
  const AnimeList({super.key});

  @override
  Widget build(BuildContext context) {
    final anime = [
      {
        "image": 'assets/images/card1.png', // make sure this is PNG/JPG
        "title": "Detective Conan",
        "genre": "Mystery",
        "rating": 5.0,
      },
      {
        "image": 'assets/images/card2.png',
        "title": "Hunter x Hunter",
        "genre": "Adventure",
        "rating": 5.0,
      },
      {
        "image": 'assets/images/card3.png',
        "title": "One Piece",
        "genre": "Adventure",
        "rating": 5.0,
      },
    ];

    return SizedBox(
      height: 320, // 🔥 increased height to fit image + text
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: anime.length,
        itemBuilder: (context, index) {
          final item = anime[index];
          return AnimeCard(
            image: item["image"] as String,
            title: item["title"] as String,
            genre: item["genre"] as String,
            rating: item["rating"] as double,
          );
        },
      ),
    );
  }
}

class AnimeCard extends StatelessWidget {
  final String image;
  final String title;
  final String genre;
  final double rating;

  const AnimeCard({
    super.key,
    required this.image,
    required this.title,
    required this.genre,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRoutes.details);
          },
          child: Container(
            width: 180,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                children: [
                  // Poster
                  Image.asset(
                    image,
                    width: 180,
                    height: 260,
                    fit: BoxFit.cover,
                  ),

                  // Rating badge
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 14,
                            color: AppColors.primary,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            rating.toStringAsFixed(1),
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Gradient + title/subtitle
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.7),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.ralewayRegular14.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.cardTitle,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              genre,
              textAlign: TextAlign.center,
              style: AppTextStyles.ralewayMedium12.copyWith(
                color: AppColors.cardGenre,
                shadows: [
                  Shadow(
                    offset: Offset(0, 2), // a bit lower
                    blurRadius: 6, // slightly softer
                    color: AppColors.cardGenre, // semi-transparent black
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
