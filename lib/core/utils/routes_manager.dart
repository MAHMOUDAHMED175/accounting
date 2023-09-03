import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/features/accounting/view/screens/accounts_grid_view_commponent.dart';
import 'package:accounting/features/home_screen/view/screens/control_board.dart';
import 'package:accounting/features/the_sales/view/screens/sales_grid_view_commponent.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";

  static const String contentGridViewScreens = "/ContentGridViewScreens";
  static const String accountsGridViewComponent = "/AccountsGridViewComponent";
  static const String salesGridViewComponent = "/SalesGridViewComponent";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) {
          return const ControlBoardScreen();
        });
      case Routes.accountsGridViewComponent:
        return MaterialPageRoute(
            builder: (_) => const AccountsGridViewComponent());
      case Routes.salesGridViewComponent:
        return MaterialPageRoute(
            builder: (_) => const SalesGridViewComponent());
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
