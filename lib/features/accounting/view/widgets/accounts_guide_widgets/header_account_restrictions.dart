import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

Widget headerAccountRestrictions() => Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              'العمليه',
              style: getLightStyle(
                  color: ColorManager.black, fontSize: FontSize.s16),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'مدين',
              style: getBoldStyle(
                  color: ColorManager.black, fontSize: FontSize.s16),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'دائن',
              style: getBoldStyle(
                  color: ColorManager.black, fontSize: FontSize.s16),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'الرصيد بعد',
              style: getBoldStyle(
                  color: ColorManager.black, fontSize: FontSize.s16),
            ),
          ),
        ],
      ),
    );
