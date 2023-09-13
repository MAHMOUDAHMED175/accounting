






import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

Widget headerItemsCashier() => Row(
  children: [
    Expanded(
      flex: 3,
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.black,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p4),
          child: Center(
            child: Text(
              'منتج',
              style: getLightStyle(color: ColorManager.white),
            ),
          ),
        ),
      ),
    ),
    Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(
            right: 1
        ),            child: Container(
        decoration: BoxDecoration(
          color: ColorManager.black,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p4),
          child: Center(
            child: Text(
              'الكميه',
              style: getLightStyle(color: ColorManager.white),
            ),
          ),
        ),
      ),
      ),
    ),
    Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(
            right: 1
        ),            child: Container(
        decoration: BoxDecoration(
          color: ColorManager.black,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p4),
          child: Center(
            child: Text(
              'المجموع',
              style: getLightStyle(color: ColorManager.white),
            ),
          ),
        ),
      ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(
          right: 1
      ),
      child: Container(
        height: AppSize.s28,
        decoration: BoxDecoration(
          color: ColorManager.black,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p4),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p4),
              child: Icon(Icons.cancel_outlined,color: ColorManager.white,size: AppSize.s14,),
            ),
          ),
        ),
      ),
    ),
  ],
);
