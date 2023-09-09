import 'package:accounting/core/shared/widgets/card.dart';
import 'package:accounting/core/utils/assets_manager.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/responsive.dart';
import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/restaurant/presentation/view_model/reastaurant_cubit.dart';
import 'package:flutter/material.dart';

import 'restaurant_search_grid_view_widgets/restaurant_search_grid_view_widgets.dart';

class RestaurantGridViewWidget extends StatelessWidget {
  const RestaurantGridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorManager.primary,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppPadding.p40),
              topRight: Radius.circular(AppPadding.p40),
          )
      ),
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(AppPadding.p20),
            child: RestaurantSearchGridViewWidgets(),
          ),
          Expanded(
            child: Padding(
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
                        imageOr: true,
                        image:ImageAssets.pizza,
                        title: AppStrings.pizza,
                        elevation: 0.8,
                      )),
                  InkWell(
                      hoverColor: ColorManager.grey400,
                      onTap: () {
                        RestaurantCubit.get(context).restaurantChangeIndex(2);
                      },
                      child: const SelectCard(
                        imageOr: true,
                        image: ImageAssets.salad,
                        elevation: 0.8,
                        title: AppStrings.salad,
                      )),
                  InkWell(
                      hoverColor: ColorManager.grey400,
                      onTap: () {
                        RestaurantCubit.get(context).restaurantChangeIndex(3);
                      },
                      child: const SelectCard(
                        imageOr: true,
                        image: ImageAssets.hotDrink,
                        elevation: 0.8,
                        title: AppStrings.hotDrink,
                      )),
                  InkWell(
                      hoverColor: ColorManager.grey400,
                      onTap: () {
                        RestaurantCubit.get(context).restaurantChangeIndex(4);
                      },
                      child: const SelectCard(
                        imageOr: true,
                        image: ImageAssets.solidDrink,
                        elevation: 0.8,
                        title: AppStrings.solidDrink,
                      )),
                  InkWell(
                      hoverColor: ColorManager.grey400,
                      onTap: () {
                        RestaurantCubit.get(context).restaurantChangeIndex(5);
                      },
                      child: const SelectCard(
                        imageOr: true,
                        image: ImageAssets.sweets,
                        elevation: 0.8,
                        title: AppStrings.sweets,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
