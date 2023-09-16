import 'package:accounting/core/utils/responsive.dart';
import 'package:accounting/core/utils/routes_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/screens/home_screen.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/header_home_screen_widgets/header_home_screen.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/side_menu_widgets/side_menu.dart';
import 'package:accounting/features/home_screen/presentation/view_model/home_screen_cubit.dart';
import 'package:flutter/material.dart';

class ContentGridViewScreens extends StatelessWidget {
  ContentGridViewScreens({super.key, required this.child});

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
                  if (HomeScreenCubit.get(context).openSide)
                    sideMenu(context), // إضافة Side Menu هنا
                Expanded(
                  child: Column(
                    children: [
                      HeaderHomeScreen(), // إضافة الHeader هنا
                      WillPopScope(
                        onWillPop: () async {
                          // التحقق مما إذا كان هناك شاشات سابقة في تاريخ الملاحة
                          if (navigatorKey.currentState!.canPop()) {
                            // إذا كان هناك شاشات سابقة، عود إلى الشاشة السابقة
                            navigatorKey.currentState?.pop();
                            return false; // لا تترك الصفحة الحالية
                          } else {
                            // إذا لم يكن هناك شاشات سابقة، اترك الصفحة الحالية
                            HomeScreenCubit.get(context).currentIndex = 0;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const HomeScreen()));
                            return false;
                          }
                        },
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
