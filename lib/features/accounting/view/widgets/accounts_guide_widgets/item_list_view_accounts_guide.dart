import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/accounting/view/screens/list_view_accounts_guide_sceen.dart';
import 'package:flutter/material.dart';

Widget itemListViewAccountsGuide(context, index) => InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ListViewAccountsGuideScreen()),
        );
      },
      hoverColor: ColorManager.primary,
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
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
                const SizedBox(
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
                    child: ListTile(
                      leading: Icon(
                        Icons.edit,
                        color: ColorManager.blue,
                      ),
                      title: const Text('تعديل'),
                    ),
                    onTap: () {},
                  ),
                  //if this sub
                  PopupMenuItem<String>(
                    child: ListTile(
                      leading: Icon(
                        Icons.delete,
                        color: ColorManager.red,
                      ),
                      title: const Text('حذف'),
                    ),
                    onTap: () {},
                  ),
                ];
              },
            ),
          ],
        ),
      ),
    );
