import 'package:career_opt/feature/detail_job/presentation/detail_job_screen.dart';
import 'package:career_opt/feature/get_started/presentation/get_started_screen.dart';
import 'package:career_opt/feature/home/presentation/home_screen.dart';
import 'package:career_opt/splashscreen.dart';
import 'package:flutter/material.dart';

import '/core/route/app_route_name.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.splashscreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
          settings: settings,
        );

      case AppRouteName.getStarted:
        return MaterialPageRoute(
          builder: (_) => const GetStartedScreen(),
          settings: settings,
        );

      case AppRouteName.home:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const HomeScreen(),
          transitionDuration: const Duration(milliseconds: 400),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteName.detailJob:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const DetailJobScreen(),
          transitionDuration: const Duration(milliseconds: 400),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
    }

    return null;
  }
}
