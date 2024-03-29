import 'package:accounting/core/functions/navigator.dart';
import 'package:accounting/core/shared/widgets/card.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/responsive.dart';
import 'package:accounting/core/utils/routes_manager.dart';
import 'package:flutter/material.dart';


class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

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
                    navigateTo(context, Routes.accountsGridViewComponent);
                  },
                  child: const SelectCard(
                    imageOr: false,
                    icon: Icons.calculate_outlined,
                    title: 'الحسابات',
                  )),
              InkWell(
                  hoverColor: ColorManager.grey400,
                  onTap: () {
                    // GoRouter.of(context).push(AppRoute.sell);
                  },
                  child: const SelectCard(
                    icon: Icons.inventory,
                    imageOr: false,
                    title: 'ادارة المخزون',
                  )),
              InkWell(
                  hoverColor: ColorManager.grey400,
                  onTap: () {
                    navigateTo(context, Routes.salesGridViewComponent);
                  },
                  child: const SelectCard(
                    imageOr: false,
                    icon: Icons.money,

                    title: 'المبيعات',
                  )),
              InkWell(
                  hoverColor: ColorManager.grey400,
                  onTap: () {

                    // GoRouter.of(context).push(AppRoute.Representatives);
                  },
                  child: const SelectCard(
                    icon: Icons.card_travel,
                    imageOr: false,
                    title: 'المشتريات',
                  )),
              InkWell(
                  hoverColor: ColorManager.grey400,
                  onTap: () {
                    // GoRouter.of(context).push(AppRoute.Supplier);
                  },
                  child: const SelectCard(
                    icon: Icons.production_quantity_limits,
                    imageOr: false,
                    title: 'الانتاج',
                  )),
              InkWell(
                  hoverColor: ColorManager.grey400,
                  onTap: () {
                    // GoRouter.of(context).push(AppRoute.Client);
                  },
                  child: const SelectCard(
                    imageOr: false,
                    icon: Icons.h_mobiledata_rounded,
                    title: "الموارد البشريه",
                  )),
              InkWell(
                  hoverColor: ColorManager.grey400,
                  onTap: () {
                    // GoRouter.of(context).push(AppRoute.homePage);
                  },
                  child: const SelectCard(
                    icon: Icons.call_to_action_sharp,
                    imageOr: false,
                    title: "CRM",
                  )),
              InkWell(
                  hoverColor: ColorManager.grey400,
                  onTap: () {
                    // GoRouter.of(context).push(AppRoute.expenses);
                  },
                  child: const SelectCard(
                    imageOr: false,
                    icon: Icons.production_quantity_limits,
                    title: "المتجر الالكترونى",
                  )),
              InkWell(
                  hoverColor: ColorManager.grey400,
                  onTap: () {
                    // GoRouter.of(context).push(AppRoute.homePage);
                  },
                  child: const SelectCard(
                    icon: Icons.settings,
                    imageOr: false,
                    title: "الاعدادات",
                  )),
              InkWell(
                hoverColor: ColorManager.grey400,
                onTap: () {
                  // GoRouter.of(context).push(AppRoute.homePage);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
