import 'package:accounting/core/utils/routes_manager.dart';
import 'package:accounting/features/accounting/view/screens/accounts_grid_view_commponent.dart';
import 'package:accounting/features/home_screen/view_model/home_screen_cubit.dart';
import 'package:flutter/material.dart';

class ContentGridViewScreens extends StatelessWidget {
   ContentGridViewScreens({super.key});
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body:Navigator(
            key: navigatorKey,
            onGenerateRoute: (settings) {
              if (settings.name ==Routes.splashRoute) {
                return MaterialPageRoute(builder: (context) => HomeScreenCubit.get(context)
                    .screen[HomeScreenCubit.get(context).currentIndex],);
              }

              else if (settings.name == Routes.accountsGridViewComponent) {
                              return MaterialPageRoute(builder: (context) => AccountsGridViewComponent());
                            }
              // يمكنك إضافة المزيد من الشاشات الفرعية هنا إذا لزم الأمر
              return null;
            },
          ),


    );
  }
}
