import 'package:accounting/core/utils/assets_manager.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class ItemCashier extends StatelessWidget {
  const ItemCashier({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.white,
      child: Column(
        children: [
          Container(
            color: ColorManager.red,
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p4),
              child: Row(
                children: [
                  Text(
                    '198',
                    style: getLightStyle(color: ColorManager.orange200),
                  ),
                  Icon(Icons.check_circle,
                      size: AppSize.s16, color: ColorManager.orange200),
                  const Spacer(),
                  Text(
                    '55',
                    style: getLightStyle(color: ColorManager.white),
                  ),
                  Icon(Icons.money,
                      size: AppSize.s16, color: ColorManager.white),
                ],
              ),
            ),
          ),
          Expanded(
              child: Image.asset(
                ImageAssets.solidDrink,
                fit: BoxFit.contain,
              )),
          const Text(
            'انفينكس نوت  680 ْ x'
                'انفينكس نوت  680 ْ x'
                'انفينكس نوت  680 ْ x',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
