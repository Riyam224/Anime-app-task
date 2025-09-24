import 'package:clean_arch_task/core/theming/app_colors.dart';
import 'package:clean_arch_task/core/theming/app_styles';
import 'package:clean_arch_task/features/home/presentation/widgets/anime_list.dart';
import 'package:clean_arch_task/features/home/presentation/widgets/categories_items.dart';
import 'package:clean_arch_task/features/home/presentation/widgets/characters_list.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height, // screen height
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppColors.accent, Colors.white],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    'assets/images/star1.svg',
                    width: 300,
                    height: 350,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14, top: 80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Where Anime Comes Alive',
                        style: AppTextStyles.ralewayBold24,
                      ),
                      SizedBox(height: 24),
                      CategoriesItems(),
                      SizedBox(height: 20),
                      AnimeList(),
                      SizedBox(height: 24),
                      Text(
                        'Top Characters',
                        style: AppTextStyles.ralewayBold24,
                      ),
                      SizedBox(height: 24),
                      CharacterList(),
                      SizedBox(height: 28),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
