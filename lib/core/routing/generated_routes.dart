// ______________ go router ______________
import 'package:clean_arch_task/core/routing/app_routes.dart';
import 'package:clean_arch_task/features/details/presentation/views/details_view.dart';
import 'package:clean_arch_task/features/home/presentation/views/home_view.dart';
import 'package:clean_arch_task/features/home/presentation/views/main_view.dart';
import 'package:clean_arch_task/features/upgrade_plan/presentation/views/upgrade_plan_view.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class RouteGenerator {
  static GoRouter mainRoutingInOurApp = GoRouter(
    errorBuilder: (context, state) =>
        const Scaffold(body: Center(child: Text('404 Not Found'))),
    initialLocation: AppRoutes.mainView,
    routes: [
      GoRoute(
        path: AppRoutes.mainView,
        name: AppRoutes.mainView,
        builder: (context, state) => const MainView(),
      ),
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        builder: (context, state) => HomeView(),
      ),

      // GoRoute(
      //   path: AppRoutes.details,
      //   name: AppRoutes.details,
      //   builder: (context, state) => const DetailsView(),
      // ),
      GoRoute(
        path: AppRoutes.details,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const DetailsView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  const begin = Offset(1.0, 0.0); // slide from right
                  const end = Offset.zero;
                  const curve = Curves.easeInOut;

                  final tween = Tween(
                    begin: begin,
                    end: end,
                  ).chain(CurveTween(curve: curve));

                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                },
          );
        },
      ),

      GoRoute(
        path: AppRoutes.upgrade,
        name: AppRoutes.upgrade,
        builder: (context, state) => const UpgradePlanView(),
      ),
    ],
  );
}
