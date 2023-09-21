import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/accounting/view/widgets/accounts_guide_widgets/header_account_restrictions.dart';
import 'package:accounting/features/accounting/view/widgets/accounts_guide_widgets/header_date_time_accounts_guide.dart';
import 'package:flutter/material.dart';

class OnTapOnSubAccountForRestrictions extends StatelessWidget {
  const OnTapOnSubAccountForRestrictions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // color: ColorManager.white,
          border: Border.all(
            color: ColorManager.grey, // Border color
            width: 0.4, // Border width
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderDateTimeAccountsGuide(),
            const SizedBox(
              height: AppSize.s28,
            ),
            headerAccountRestrictions(),
            const Divider(),
            const Text('data of restrictions'),
          ],
        ),
      ),
    );
  }
}
