import 'package:accounting/core/shared/widgets/defaulte_widget_button.dart';
import 'package:accounting/core/shared/widgets/text_from_field_widget.dart';
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
                    const Expanded(child: MyTreeView()),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
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
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return itemListViewAccountsGuide();
                        },
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemCount: 10,
                      ),
                    ),
                    //no data
                    Padding(
                      padding: const EdgeInsets.all(AppPadding.p20),
                      child: Text(
                        'هذا الحساب فارغ',
                        style: getBoldStyle(
                            color: ColorManager.black, fontSize: FontSize.s20),
                      ),
                    ),
                    DefaultWidgetButton(
                      height: AppSize.s50,
                      color: ColorManager.white,
                      widget: Row(
                        children: [
                          Icon(
                            Icons.add_circle_outline,
                            color: ColorManager.blue,
                            size: FontSize.s20,
                          ),
                          const SizedBox(
                            width: AppSize.s12,
                          ),
                          Text(
                            'اضف حساب',
                            style: getBoldStyle(
                                color: ColorManager.blue,
                                fontSize: FontSize.s16),
                          )
                        ],
                      ),
                      onPress: () {},
                      valueBorder: 0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget itemListViewAccountsGuide() => InkWell(
      onTap: () {},
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

class HeaderDateTimeAccountsGuide extends StatelessWidget {
  HeaderDateTimeAccountsGuide({super.key});

  final TextEditingController dateTimeHeaderAccountsGuideController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        AppPadding.p8,
      ),
      child: Row(
        children: [
          InkWell(
            child: Container(
              height: 30,
              width: 30,
              color: ColorManager.blue200,
              child: Icon(
                Icons.keyboard_arrow_up,
                color: ColorManager.black,
              ),
            ),
          ),
          const SizedBox(
            width: 1,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 30,
              width: 30,
              color: ColorManager.blue200,
              child: Icon(
                Icons.keyboard_arrow_down,
                color: ColorManager.black,
              ),
            ),
          ),
          const SizedBox(
            width: 3,
          ),
          Expanded(
            child: SizedBox(
              height: AppSize.s32,
              child: defaultFormField(
                  controller: dateTimeHeaderAccountsGuideController,
                  type: TextInputType.text,
                  border: BorderRadius.circular(0),
                  hintText: 'الفتره من / الى'),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: Container(
              height: 30,
              width: 30,
              color: ColorManager.grey200,
              child: Icon(
                Icons.keyboard_arrow_right_outlined,
                color: ColorManager.grey,
              ),
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 30,
              width: 30,
              color: ColorManager.grey200,
              child: Icon(
                Icons.keyboard_arrow_left_outlined,
                color: ColorManager.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
