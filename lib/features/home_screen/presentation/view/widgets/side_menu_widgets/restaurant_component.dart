import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/side_menu_widgets/item_expansion_panel.dart';
import 'package:accounting/features/home_screen/presentation/view_model/home_screen_cubit.dart';
import 'package:accounting/features/restaurant/presentation/view_model/reastaurant_cubit.dart';
import 'package:flutter/material.dart';

Widget restaurantSubItems(context) => Column(
      children: [
        buildSubItem(AppStrings.home, () {
          RestaurantCubit.get(context).restaurantChangeIndex(0);
          HomeScreenCubit.get(context).changeIndex(3);
        }),
        buildSubItem(AppStrings.menu, () {
          RestaurantCubit.get(context).restaurantChangeIndex(1);
          HomeScreenCubit.get(context).changeIndex(3);
        }),
        buildSubItem(AppStrings.reservations, () {
          RestaurantCubit.get(context).restaurantChangeIndex(3);
          HomeScreenCubit.get(context).changeIndex(3);
          // تنفيذ الإجراء عند الضغط على القيود اليومية
        }),
        buildSubItem(AppStrings.kitchen, () {
          RestaurantCubit.get(context).restaurantChangeIndex(4);
          HomeScreenCubit.get(context).changeIndex(3);
          // تنفيذ الإجراء عند الضغط على القيود اليومية
        }),
        buildSubItem(AppStrings.the_tables, () {
          RestaurantCubit.get(context).restaurantChangeIndex(5);
          HomeScreenCubit.get(context).changeIndex(3);
          // تنفيذ الإجراء عند الضغط على القيود اليومية
        }),
        buildSubItem(AppStrings.printerSettings, () {
          RestaurantCubit.get(context).restaurantChangeIndex(6);
          HomeScreenCubit.get(context).changeIndex(3);
          // تنفيذ الإجراء عند الضغط على القيود اليومية
        }),
      ],
    );
