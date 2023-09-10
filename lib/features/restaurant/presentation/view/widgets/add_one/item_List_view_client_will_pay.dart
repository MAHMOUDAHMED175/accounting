import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

Widget ItemListViewClientWillPay() {
  return Padding(
    padding: const EdgeInsets.all(AppPadding.p16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            '2 x بيتزا',
            style: getMediumStyle(
                color: ColorManager.black, fontSize: FontSize.s14),
          ),
          Text(
            'SAR 50.00',
            style: getMediumStyle(
                color: ColorManager.black, fontSize: FontSize.s10),
          ),
        ]),
        SizedBox(
          height: 5,
        ),
        Container(
          // height: 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppPadding.p28),
            color: ColorManager.grey200,
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: Text(
              'جبن قليل الدسم . SAR 20',
              style: getMediumStyle(
                  color: ColorManager.grey, fontSize: FontSize.s10),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          // height: 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppPadding.p28),
            color: ColorManager.grey200,
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: Text(
              'عادى .SAR 10',
              style: getMediumStyle(
                  color: ColorManager.grey, fontSize: FontSize.s10),
            ),
          ),
        ),
      ],
    ),
  );
}
