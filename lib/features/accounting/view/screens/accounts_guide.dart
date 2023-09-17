import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
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
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return itemListViewAccountsGuide();
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget itemListViewAccountsGuide() => Padding(
      padding: EdgeInsets.all(AppPadding.p8),
      child: Row(
        children: [
          Icon(
            Icons.folder,
            size: AppSize.s28,
            color: ColorManager.blue,
          ),
          const SizedBox(
            width: AppSize.s8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'الاصول',
                style: getBoldStyle(
                    color: ColorManager.black, fontSize: FontSize.s18),
              ),
              const SizedBox(
                height: AppSize.s8,
              ),
              Text(
                '#1',
                style: getBoldStyle(
                  color: ColorManager.grey400,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Text(
                '500',
                style: getBoldStyle(
                    color: ColorManager.black, fontSize: FontSize.s18),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'مدين',
                style: getBoldStyle(
                  color: ColorManager.grey400,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: AppSize.s8,
          ),
          PopupMenuButton<String>(
            child: Container(
              width: AppSize.s32,
              height: AppSize.s32,
              color: ColorManager.blue200,
              child: const Icon(Icons.more_horiz),
            ),
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'Item 1',
                  child: ListTile(
                    leading: Icon(
                      Icons.visibility,
                      color: ColorManager.green,
                    ),
                    title: const Text('عرض'),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
    );
