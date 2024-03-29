import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/accounting/presentaition/view/screens/list_view_accounts_guide_sceen.dart';
import 'package:accounting/features/accounting/presentaition/view/widgets/accounts_guide_widgets/accounts_tree.dart';
import 'package:flutter/material.dart';

import '../widgets/accounts_guide_widgets/search_accounts_guide.dart';

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
                    Expanded(child: MyAppss()),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child:
                  ListViewAccountsGuideScreen(), // Replace with your list screen widget
            ),
          ],
        ),
      ),
    );
  }
}
