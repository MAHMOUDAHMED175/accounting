import 'package:accounting/core/shared/widgets/defaulte_widget_button.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

Widget buttonsRestaurantPayAndKitchenAndDelete() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: DefaultWidgetButton(
          valueBorder: 0,
          color: ColorManager.grey200,
          onPress: () {},
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.call_to_action_sharp, color: ColorManager.grey),
              SizedBox(
                width: 5,
              ),
              Text(
                AppStrings.payment,
                style: getLightStyle(
                    color: ColorManager.grey, fontSize: FontSize.s18),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: DefaultWidgetButton(
                valueBorder: 0,
                color: ColorManager.grey200,
                onPress: () {},
                widget: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.soup_kitchen_sharp,
                      color: ColorManager.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Text(
                        AppStrings.sendToKitchen,
                        style: getLightStyle(color: ColorManager.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: AppSize.s8,
            ),
            Expanded(
              child: DefaultWidgetButton(
                valueBorder: 0,
                color: ColorManager.grey200,
                onPress: () {},
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.delete,
                      color: ColorManager.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      AppStrings.cancel,
                      style: getLightStyle(color: ColorManager.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    ],
  );
}
