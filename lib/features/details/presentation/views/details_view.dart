import 'dart:ui';
import 'package:clean_arch_task/core/theming/app_colors.dart';
import 'package:clean_arch_task/core/theming/app_styles';
import 'package:clean_arch_task/core/widgets/custom_button_with_icon.dart';
import 'package:clean_arch_task/features/details/presentation/widgets/anime_views_info.dart';
import 'package:clean_arch_task/features/details/presentation/widgets/genres_list.dart';
import 'package:clean_arch_task/features/details/presentation/widgets/line.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          GoRouter.of(context).push('/upgrade_plan');
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF2A2050), // top
                Color(0xFF2B1F4E), // middle
                Color(0xFF2E2350), // bottom
              ],
            ),
          ),
          child: Stack(
            children: [
              // 🔴 Right blurred eclipse
              Positioned(
                bottom: 188,
                right: -55,
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 50, // increase this for stronger blur
                    sigmaY: 50,
                  ),
                  child: Image.asset(
                    'assets/images/right_eclipse.png',
                    width: 220,
                    height: 130,
                  ),
                ),
              ),

              // 🔴 Left blurred eclipse
              Positioned(
                bottom: 0,
                left: -40,
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 50, // increase this too
                    sigmaY: 50,
                  ),
                  child: Image.asset(
                    'assets/images/left_eclipse.png',
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
              Positioned.fill(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 25,
                    sigmaY: 25,
                  ), // blur strength
                  child: Image.asset(
                    'assets/images/blur.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/details_bg.png',
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: 350,
                left: 0,
                right: 0,
                child: Image.asset('assets/images/white_eclipse.png'),
              ),
              Positioned(
                top: 210,
                left: 0,
                right: -81,
                child: Image.asset('assets/images/red_eclipse.png'),
              ),
              Positioned(
                top: 480,
                left: 0,
                right: 0,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'DEMON',
                        style: AppTextStyles.newRockerRegular48.copyWith(
                          height: 0.9, // reduce line height
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'SLAYER',
                        style: AppTextStyles.newRockerRegular48.copyWith(
                          fontSize: 36,
                          height: 0.9, // match tighter spacing
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              DraggableScrollableSheet(
                initialChildSize: 0.35, // starts at 35% height
                minChildSize: 0.25, // can shrink down
                maxChildSize: 0.8, // can expand up
                builder: (context, scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    child: ListView(
                      controller: scrollController,
                      padding: const EdgeInsets.all(16),
                      children: [
                        const SizedBox(height: 20),
                        const GenresList(),
                        const SizedBox(height: 20),
                        const Line(),
                        const SizedBox(height: 12),
                        const AnimeViewsInfo(),
                        const SizedBox(height: 12),
                        const Line(),
                        const SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/anime_fire.png',
                              width: 29,
                              height: 32,
                            ),
                            const SizedBox(width: 7),
                            Container(
                              width: 300,
                              child: Text(
                                textAlign: TextAlign.center,
                                'Demon Slayer: Kimetsu no Yaiba follows Tanjiro,a kind-hearted boy who '
                                'becomes a demon slayer after his family is slaughtered and his sister '
                                'is turned into a demon. Experience breathtaking battles, stunning animation '
                                'and an emotional journey of courage and hope.',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  height: 1.4,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500,
                                ),
                                softWrap: true,
                                overflow:
                                    TextOverflow.visible, // 👈 ensures wrapping
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),

              Positioned(
                bottom: -0.07,
                left: 0,
                right: 0,

                child: Container(
                  width: 376,
                  height: 100,
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 15.4,
                    bottom: 15.4,
                    // top: 15.4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.detailsBottomBg, // dark purple background
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Preview button
                      CustomButtonWithIcon(
                        image: 'assets/images/preview_icon.png',
                        title: 'Preview',
                        btnColor: Colors.white.withOpacity(
                          0.2,
                        ), // semi-transparent
                      ),
                      const SizedBox(width: 12),
                      // Watch Now button
                      CustomButtonWithIcon(
                        image: 'assets/images/eye_icon.png',
                        title: 'Watch Now',
                        btnColor: const Color(
                          0xFF6C63FF,
                        ), // bright purple highlight
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
