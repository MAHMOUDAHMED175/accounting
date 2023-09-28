import 'package:accounting/core/utils/responsive.dart';
import 'package:accounting/core/utils/routes_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/screens/home_screen.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/side_menu_widgets/side_menu.dart';
import 'package:accounting/features/home_screen/presentation/view_model/home_screen_cubit.dart';
import 'package:flutter/material.dart';

import '../widgets/header_home_screen_widgets/header_home_screen.dart';

class ContentGridViewScreens extends StatelessWidget {
  ContentGridViewScreens({super.key, required this.child});

  static GlobalKey scaffoldKey = GlobalKey();
  static GlobalKey<NavigatorState> listNavigatorKey =
      GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                if (Responsive.isDesktop(context))
                  if (HomeScreenCubit.get(context).openSide) sideMenu(context),
                Expanded(
                  key: scaffoldKey,
                  child: Column(
                    children: [
                      const HeaderHomeScreen(),
                      WillPopScope(
                        onWillPop: () async {
                          if (listNavigatorKey.currentState!.canPop()) {
                            listNavigatorKey.currentState?.pop();
                            return false;
                          } else if (navigatorKey.currentState!.canPop()) {
                            navigatorKey.currentState?.pop();
                            return false;
                          } else {
                            HomeScreenCubit.get(context).currentIndex = 0;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => HomeScreen(),
                              ),
                            );
                            return false;
                          }
                        },
                        // onWillPop: () async {
                        //   if (navigatorKey.currentState!.canPop()) {
                        //     navigatorKey.currentState?.pop();
                        //     return false;
                        //   } else {
                        //     HomeScreenCubit.get(context).currentIndex = 0;
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (_) => HomeScreen()));
                        //     return false;
                        //   }
                        // },
                        child: Expanded(
                          child: Navigator(
                            key: navigatorKey,
                            onGenerateRoute: RouteGenerator.getRoute,
                            onGenerateInitialRoutes:
                                (navigator, initialRoute) => [
                              MaterialPageRoute(builder: (context) => child),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
