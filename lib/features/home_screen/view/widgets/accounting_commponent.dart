import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/home_screen/view/widgets/item_expansion_panel.dart';
import 'package:flutter/material.dart';

Widget renderAccountingSubItems()=>
   Column(
    children: [
      buildSubItem(AppStrings.dailyRestrictions, () {
        // تنفيذ الإجراء عند الضغط على القيود اليومية
      }),
      buildSubItem(AppStrings.accountsGuide, () {
        // تنفيذ الإجراء عند الضغط على دليل الحسابات
      }),
      buildSubItem(AppStrings.costCentres, () {
        // تنفيذ الإجراء عند الضغط على مراكز التكلفة
      }),
    ],
  );


