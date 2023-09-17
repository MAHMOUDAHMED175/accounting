import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/accounting/view/widgets/accounts_guide_widgets/accounts_tree.dart';
import 'package:accounting/features/accounting/view/widgets/accounts_guide_widgets/search_accounts_guide.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/color_manager.dart';

class AccountsGuide extends StatelessWidget {
  const AccountsGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p20),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  // color: ColorManager.white,
                  border: Border.all(
                    color: ColorManager.grey, // Border color
                    width: 0.4, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    SearchAccountsGuide(),
                    Expanded(child: MyTreeView()),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.grey100,
                  border: Border.all(
                    color: ColorManager.grey, // Border color
                    width: 0.4, // Border width
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
