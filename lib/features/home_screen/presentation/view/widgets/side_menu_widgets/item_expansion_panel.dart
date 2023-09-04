
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/side_menu_widgets/accounting_component.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/side_menu_widgets/control_board_component.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/side_menu_widgets/sales_component.dart';
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

Widget itemsHeaderExpansionPanelList(context,String title) {
  switch (title) {
    case AppStrings.controlBoard:
      return controlBoardSubItems(context);
    case AppStrings.theAccounts:
      return accountingSubItems(context);
    case AppStrings.inventoryManagement:
      return Container();
    case AppStrings.sales:
      return salesSubItems(context);
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