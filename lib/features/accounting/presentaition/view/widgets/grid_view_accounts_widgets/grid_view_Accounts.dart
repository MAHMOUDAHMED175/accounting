import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/responsive.dart';
import 'package:accounting/core/utils/strings_manager.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/shared/widgets/card.dart';

class GridViewWidgetAccounts extends StatelessWidget {
  const GridViewWidgetAccounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.count(
            crossAxisCount:
                Responsive.isDesktop(context) || Responsive.isTablet(context)
                    ? 4
                    : 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.8,
            children: [
              InkWell(
                  hoverColor: ColorManager.grey400,
                  onTap: () {
                    // GoRouter.of(context).push(AppRoute.store);
                  },
                  child: const SelectCard(
                    icon: Icons.calculate_outlined,
                    imageOr: false,
                    title: AppStrings.dailyRestrictions,
                  )),
              InkWell(
                  hoverColor: ColorManager.grey400,
                  onTap: () {
                    // GoRouter.of(context).push(AppRoute.sell);
                  },
                  child: const SelectCard(
                    icon: Icons.inventory,
                    imageOr: false,
                    title: AppStrings.accountsGuide,
                  )),
              InkWell(
                  hoverColor: ColorManager.grey400,
                  onTap: () {
                    // GoRouter.of(context).push(AppRoute.buy);
                  },
                  child: const SelectCard(
                    icon: Icons.money,
                    imageOr: false,
                    title: AppStrings.costCentres,
                  )),
              InkWell(
                  hoverColor: ColorManager.grey400,
                  onTap: () {
                    // GoRouter.of(context).push(AppRoute.Representatives);
                  },
                  child: const SelectCard(
                    imageOr: false,
                    icon: Icons.card_travel,
                    title: AppStrings.fixedAssets,
                  )),
              InkWell(
                  hoverColor: ColorManager.grey400,
                  onTap: () {
                    // GoRouter.of(context).push(AppRoute.Supplier);
                  },
                  child: const SelectCard(
                    icon: Icons.production_quantity_limits,
                    title: AppStrings.receiptOfMoney,
                    imageOr: false,
                  )),
              InkWell(
                  hoverColor: ColorManager.grey400,
                  onTap: () {
                    // GoRouter.of(context).push(AppRoute.Client);
                  },
                  child: const SelectCard(
                    icon: Icons.h_mobiledata_rounded,
                    imageOr: false,
                    title: AppStrings.spendingMoney,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
