import 'package:accounting/core/shared/widgets/defaulte_widget_button.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/accounting/view/widgets/accounts_guide_widgets/item_list_view_accounts_guide.dart';
import 'package:flutter/material.dart';

class ChildListViewAccountsGuideScreen extends StatelessWidget {
  const ChildListViewAccountsGuideScreen({super.key});

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
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return itemListViewAccountsGuide(context, index);
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: 10,
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
                        color: ColorManager.blue, fontSize: FontSize.s16),
                  )
                ],
              ),
              onPress: () {},
              valueBorder: 0,
            ),
          ],
        ),
      ),
    );
  }
}
