import 'package:clean_arch_task/core/theming/app_colors.dart';
import 'package:clean_arch_task/core/theming/app_styles';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final String image;
  final String name;
  final String anime;

  const CharacterCard({
    super.key,
    required this.image,
    required this.name,
    required this.anime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Avatar Image
        CircleAvatar(
          radius: 50, // circle size
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(height: 8),

        // Character Name
        Text(
          name,
          style: AppTextStyles.ralewaySemiBold16.copyWith(
            color: AppColors.cardTitle,
          ),
        ),

        const SizedBox(height: 4),

        // Anime Title
        Text(
          anime,
          style: AppTextStyles.ralewayRegular14.copyWith(
            color: AppColors.characterAnime,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class CharacterList extends StatelessWidget {
  const CharacterList({super.key});

  @override
  Widget build(BuildContext context) {
    final characters = [
      {
        "image": 'assets/images/person1.png',
        "name": "Gon Freecss",
        "anime": "Hunter x Hunter",
      },
      {
        "image": 'assets/images/person2.png',
        "name": "Naruto Uzumaki",
        "anime": "Naruto",
      },
      {
        "image": 'assets/images/person3.png',
        "name": "Luffy",
        "anime": "One Piece",
      },
      {
        "image": 'assets/images/person1.png',
        "name": "Gon Freecss",
        "anime": "Hunter x Hunter",
      },
    ];

    return SizedBox(
      height: 180, // enough space for image + texts
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: characters.length,
        separatorBuilder: (_, __) => const SizedBox(width: 24),
        itemBuilder: (context, index) {
          final item = characters[index];
          return CharacterCard(
            image: item["image"]!,
            name: item["name"]!,
            anime: item["anime"]!,
          );
        },
      ),
    );
  }
}
