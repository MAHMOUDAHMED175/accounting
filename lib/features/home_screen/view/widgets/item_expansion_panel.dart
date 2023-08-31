
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/home_screen/view/widgets/accounting_commponent.dart';
import 'package:flutter/material.dart';



Widget buildSubItem(String title, Function onTap) {
  return InkWell(
    hoverColor: ColorManager.blue,
    focusColor: ColorManager.white,
    onTap: () {
      // تنفيذ الإجراء عند الضغط على العنصر الفرعي
      onTap();
    },
    child: Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: Container(
        width: double.infinity,
        color: ColorManager.grey300,
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(title),
        ),
      ),
    ),
  );
}

Widget itemsHeaderExpansionPanelList(String title) {
  switch (title) {
    case AppStrings.controlBoard:
      return Container();
    case AppStrings.theAccounts:
      return renderAccountingSubItems();
    case AppStrings.inventoryManagement:
      return Container();
    case AppStrings.theSales:
      return Container();
    case AppStrings.purchases:
      return Container();
    case AppStrings.production:
      return Container();
    case AppStrings.HR:
      return Container();
    case AppStrings.CRM:
      return Container();
    case AppStrings.onlineStore:
      return Container();
    case AppStrings.settings:
      return Container();

    default:
      return Container();
  }
}