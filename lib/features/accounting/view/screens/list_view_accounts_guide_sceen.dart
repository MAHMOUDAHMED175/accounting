import 'package:accounting/core/shared/widgets/defaulte_widget_button.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/accounting/view/widgets/accounts_guide_widgets/item_list_view_accounts_guide.dart';
import 'package:accounting/features/home_screen/presentation/view/screens/content_screens.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/show_overlay.dart';
import '../widgets/accounts_guide_widgets/add_account/dialog_add_account_widget.dart';

class ListViewAccountsGuideScreen extends StatefulWidget {
  ListViewAccountsGuideScreen({super.key});

  @override
  State<ListViewAccountsGuideScreen> createState() =>
      _ListViewAccountsGuideScreenState();
}

class _ListViewAccountsGuideScreenState
    extends State<ListViewAccountsGuideScreen> {
  TextEditingController accountTypeController = TextEditingController();

  TextEditingController accountNameArabicController = TextEditingController();

  TextEditingController accountNameEnglishController = TextEditingController();

  TextEditingController accountMainChooseController = TextEditingController();

  TextEditingController accountCodeController = TextEditingController();

  List<String> listTypeAccountDropDown = ["حساب فرعى", "حساب رئيسى"];

  String? valueTypeAccountDropDown = "حساب فرعى";

  List<String> listMainAccountDropDown = ["من فضلك اختر", "ارباح", "ديون"];

  String? valueMainAccountDropDown = "من فضلك اختر";

  String selectedOption = '';

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
            //if no data
            //            Padding(
            //               padding: const EdgeInsets.all(AppPadding.p20),
            //               child: Text(
            //                 'هذا الحساب فارغ',
            //                 style: getBoldStyle(
            //                     color: ColorManager.black, fontSize: FontSize.s20),
            //               ),
            //             ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ItemListViewAccountsGuide();
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
                      color: ColorManager.blue,
                      fontSize: FontSize.s16,
                    ),
                  ),
                ],
              ),
              onPress: () {
                showOverlay(
                  context: context,
                  keyWidget: scaffoldKey,
                  widget: AddAccountDialog(context),
                );
              },
              valueBorder: 0,
            ),
          ],
        ),
      ),
    );
  }
}
