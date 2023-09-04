import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/side_menu_widgets/item_expansion_panel.dart';
import 'package:accounting/features/home_screen/presentation/view_model/home_screen_cubit.dart';
import 'package:flutter/material.dart';

Widget accountingSubItems(context)=>
   Column(
    children: [
      buildSubItem(AppStrings.dailyRestrictions, () {

        HomeScreenCubit.get(context).changeIndex(1);
        // تنفيذ الإجراء عند الضغط على القيود اليومية
      }),
      buildSubItem(AppStrings.accountsGuide, () {
        // تنفيذ الإجراء عند الضغط على دليل الحسابات
      }),
      buildSubItem(AppStrings.costCentres, () {
        // تنفيذ الإجراء عند الضغط على مراكز التكلفة
      }),
      buildSubItem(AppStrings.fixedAssets, () {
        // تنفيذ الإجراء عند الضغط على القيود اليومية
      }),
      buildSubItem(AppStrings.receiptOfMoney, () {
        // تنفيذ الإجراء عند الضغط على دليل الحسابات
      }),
      buildSubItem(AppStrings.spendingMoney, () {
        // تنفيذ الإجراء عند الضغط على مراكز التكلفة
      }),
    ],
  );



