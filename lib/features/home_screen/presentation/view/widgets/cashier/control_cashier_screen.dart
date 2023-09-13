import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/cashier/header_items_cashier.dart';
import 'package:flutter/material.dart';

import 'drop_down_menu_cashier.dart';

class ControlCashierScreen extends StatelessWidget {
  const ControlCashierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: ColorManager.white,
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Column(
            children: [
              const DropDownMenuCashier(),
              const SizedBox(
                height: AppSize.s16,
              ),
              headerItemsCashier(),
              const Spacer(),
              const Divider(),
              const Row(
                children: [
                  Expanded(flex: 2, child: Text('عناصر: 0.00')),
                  Expanded(flex: 4, child: Text('المجموع: 0.00')),
                ],
              ),
              const Divider(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('الخصم ونقاط الولاء(-): 0.00'),
                  Text('ضريبة الطلبيه(+): 0.00'),
                  Text('خدمة التوصيل(+): 0.00'),
                  Text('تقريب الى: 0'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
