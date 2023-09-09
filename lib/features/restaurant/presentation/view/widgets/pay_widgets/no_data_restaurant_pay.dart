


import 'package:accounting/core/utils/assets_manager.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';

Widget noDataRestaurantPay(){
  return Column(
    children: [
      const SizedBox(
        height: 100,
      ),
      Container(
        height: 200,
        width: 200,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageAssets.bell))),
      ),
      Text(
        AppStrings.noRequestsHaveBeenRegisteredYet,
        style: getRegularStyle(color: ColorManager.grey),
      ),
    ],
  );
}
