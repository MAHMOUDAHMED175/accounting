import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/cashier/buttons_cashier_eader.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/cashier/buttons_cashier_header_down.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/cashier/control_cashier_screen.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/cashier/grid_view_items_cashier.dart';
import 'package:flutter/material.dart';

class CashierScreen extends StatefulWidget {
  const CashierScreen({super.key});

  @override
  State<CashierScreen> createState() => _CashierScreenState();
}

class _CashierScreenState extends State<CashierScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Column(
        children: [
          const ButtonsCashierHeader(),
          Expanded(
            child: Row(
              children: [
                const ControlCashierScreen(),
                const SizedBox(
                  width: AppSize.s8,
                ),
                gridViewItemsCashier()
              ],
            ),
          ),
          const ButtonsCashierHeaderDown()
        ],
      ),
    );
  }
}


