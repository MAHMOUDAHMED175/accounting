import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/accounting/view/widgets/grid_view_accounts_widgets/grid_view_Accounts.dart';
import 'package:accounting/features/home_screen/presentation/view/screens/control_board.dart';
import 'package:accounting/features/home_screen/presentation/view/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AccountsGridViewComponent extends StatelessWidget {
  const AccountsGridViewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppPadding.p28),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: AppSize.s500, child: GridViewWidgetAccounts())
            ],
          ),
        ),
      ),
    );
  }
}
