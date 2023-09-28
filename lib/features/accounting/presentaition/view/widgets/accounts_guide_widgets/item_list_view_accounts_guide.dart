import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/features/accounting/data/accounts_model/values.dart';
import 'package:accounting/features/accounting/presentaition/view/screens/list_view_accounts_guide_sceen.dart';
import 'package:accounting/features/accounting/presentaition/view_model/managers/cubit/accounts_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/values_manager.dart';

Widget itemListViewAccountsGuide(
        {required context,
        required AccountModelValues accountValueModel,
        required index}) =>
    InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => listViewScreenAccounts(
                  listOfAccounts: AccountsCubit.get(context)
                      .accountModel!
                      .values!
                      .where(
                        (item) =>
                            accountValueModel.idInteger! == item.parentId!,
                      )
                      .toList())),
        );
      },
      hoverColor: ColorManager.primary,
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Row(
          children: [
            Icon(
              accountValueModel.haveSub == true
                  ? Icons.folder
                  : Icons.file_copy,
              size: AppSize.s28,
              color: accountValueModel.haveSub == true
                  ? ColorManager.blue
                  : ColorManager.grey,
            ),
            const SizedBox(
              width: AppSize.s8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  accountValueModel.arabicName!,
                  style: getBoldStyle(
                      color: ColorManager.black, fontSize: FontSize.s18),
                ),
                const SizedBox(
                  height: AppSize.s8,
                ),
                Text(
                  "${accountValueModel.idInteger}",
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
                    onTap: () {
                      // showOverlay(
                      //   context: context,
                      //   keyWidget: scaffoldKey,
                      //   widget: editAccountDialog(context),
                      // );
                    },
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
                    onTap: () {
                      // showOverlay(
                      //   context: context,
                      //   keyWidget: scaffoldKey,
                      //   widget: deleteAccountDialog(context),
                      // );
                    },
                  ),
                ];
              },
            ),
          ],
        ),
      ),
    );
