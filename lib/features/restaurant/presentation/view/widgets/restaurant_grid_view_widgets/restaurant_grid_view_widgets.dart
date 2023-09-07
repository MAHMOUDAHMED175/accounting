import 'package:accounting/core/shared/widgets/card.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/responsive.dart';
import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/restaurant/presentation/view_model/reastaurant_cubit.dart';
import 'package:flutter/material.dart';

class RestaurantGridViewWidget extends StatelessWidget {
  const RestaurantGridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p40),
      child: GridView.count(
        crossAxisCount:
            Responsive.isDesktop(context) || Responsive.isTablet(context)
                ? 4
                : 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1,
        children: [
          InkWell(
              hoverColor: ColorManager.blue,
              focusColor: ColorManager.blue,
              onTap: () {
                RestaurantCubit.get(context).restaurantChangeIndex(1);
              },
              child: const SelectCard(
                icon: Icons.menu_book,
                title: AppStrings.menu,
                elevation: 0.8,
              )),
          InkWell(
              hoverColor: ColorManager.grey400,
              onTap: () {
                RestaurantCubit.get(context).restaurantChangeIndex(2);
              },
              child: const SelectCard(
                icon: Icons.kitchen,
                elevation: 0.8,
                title: AppStrings.add_ons,
              )),
          InkWell(
              hoverColor: ColorManager.grey400,
              onTap: () {
                RestaurantCubit.get(context).restaurantChangeIndex(3);
              },
              child: const SelectCard(
                icon: Icons.add_box_outlined,
                elevation: 0.8,
                title: AppStrings.reservations,
              )),
          InkWell(
              hoverColor: ColorManager.grey400,
              onTap: () {
                RestaurantCubit.get(context).restaurantChangeIndex(4);
              },
              child: const SelectCard(
                icon: Icons.co_present_rounded,
                elevation: 0.8,
                title: AppStrings.kitchen,
              )),
          InkWell(
              hoverColor: ColorManager.grey400,
              onTap: () {
                RestaurantCubit.get(context).restaurantChangeIndex(5);
              },
              child: const SelectCard(
                icon: Icons.table_bar_sharp,
                elevation: 0.8,
                title: AppStrings.the_tables,
              )),
          InkWell(
              hoverColor: ColorManager.grey400,
              onTap: () {
                RestaurantCubit.get(context).restaurantChangeIndex(6);
              },
              child: const SelectCard(
                elevation: 0.8,
                icon: Icons.print,
                title: AppStrings.printerSettings,
              )),
        ],
      ),
    );
  }
}
