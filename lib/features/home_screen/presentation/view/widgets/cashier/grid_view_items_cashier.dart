import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/cashier/header_cashier_items.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/cashier/item_casher.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/values_manager.dart';

Widget gridViewItemsCashier()=>Expanded(
  flex: 2,
  child: Column(
    children: [
      const HeaderCashierItems(),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p12),
          child: GridView.builder(
            itemCount: 80,
            itemBuilder: (context, index) => InkWell(
                hoverColor: ColorManager.blue,
                focusColor: ColorManager.blue,
                onTap: () {},
                // child: const ItemGridViewMenu()
                child: const ItemCashier()),
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
            ),
          ),
        ),
      ),
    ],
  ),
);