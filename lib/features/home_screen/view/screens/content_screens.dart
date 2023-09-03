import 'package:accounting/core/utils/routes_manager.dart';
import 'package:flutter/material.dart';

class ContentGridViewScreens extends StatelessWidget {
  ContentGridViewScreens({super.key,required this.child});

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body:Navigator(
        key: navigatorKey,
        onGenerateRoute: RouteGenerator.getRoute,
        onGenerateInitialRoutes: (navigator, initialRoute) => [
          MaterialPageRoute(builder: (context) => child),
        ],
      ),
  /*
      // HomeScreenCubit.get(context)
      //     .screen[HomeScreenCubit.get(context).currentIndex],
*/
      // Navigator(
      //   key: navigatorKey,
      //   onGenerateRoute: (settings) {
      //     if (settings.name == Routes.splashRoute) {
      //       return MaterialPageRoute(
      //         builder: (context) => HomeScreenCubit.get(context)
      //             .screen[HomeScreenCubit.get(context).currentIndex],
      //       );
      //     }
      //     else if (settings.name == Routes.accountsGridViewComponent) {
      //       return MaterialPageRoute(
      //           builder: (context) => AccountsGridViewComponent());
      //     } else if (settings.name == Routes.contentGridViewScreens) {
      //       return MaterialPageRoute(
      //           builder: (context) => AccountsGridViewComponent());
      //     }else if (settings.name == Routes.salesGridViewComponent) {
      //       return MaterialPageRoute(
      //           builder: (context) => SalesGridViewComponent());
      //     }
      //     // يمكنك إضافة المزيد من الشاشات الفرعية هنا إذا لزم الأمر
      //     return null;
      //   },
      // ),
    );
  }
}
