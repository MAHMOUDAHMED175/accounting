import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/features/accounting/view/screens/accounts_grid_view_commponent.dart';
import 'package:accounting/features/home_screen/view/screens/content_screens.dart';
import 'package:accounting/features/home_screen/view/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";

  static const String contentGridViewScreens = "/ContentGridViewScreens";
  static const String accountsGridViewComponent = "/AccountsGridViewComponent";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.contentGridViewScreens:
        return MaterialPageRoute(
            builder: (_) =>  ContentGridViewScreens());
      case Routes.accountsGridViewComponent:
        return MaterialPageRoute(
            builder: (_) => const AccountsGridViewComponent());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
