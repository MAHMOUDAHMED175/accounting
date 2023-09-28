import 'package:accounting/core/functions/show_overlay.dart';
import 'package:accounting/core/shared/widgets/defaulte_widget_button.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/accounting/presentaition/view/widgets/accounts_guide_widgets/item_list_view_accounts_guide.dart';
import 'package:accounting/features/accounting/presentaition/view_model/managers/cubit/accounts_cubit.dart';
import 'package:accounting/features/accounting/presentaition/view_model/managers/cubit/accounts_state.dart';
import 'package:accounting/features/home_screen/presentation/view/screens/content_screens.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/accounts_guide_widgets/add_account/dialog_add_account_widget.dart';

class ListViewAccountsGuideScreen extends StatelessWidget {
  ListViewAccountsGuideScreen({super.key});

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
            BlocConsumer<AccountsCubit, AccountsState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return ConditionalBuilder(
                      condition:
                          AccountsCubit.get(context).accountModel != null ||
                              state is! GetAccountsTreeLoadingState,
                      builder: (context) => Expanded(
                            child: listViewScreenAccounts(
                                listOfAccounts: AccountsCubit.get(context)
                                    .accountModel!
                                    .values!
                                    .where((item) => item.accountLevel == 1)
                                    .toList()),
                          ),
                      fallback: (context) => const Padding(
                            padding: EdgeInsets.all(AppPadding.p20),
                            child:
                                CupertinoActivityIndicator(radius: AppSize.s20),
                          ));
                }),
            const Spacer(),
            defaultWidgetButton(context),
          ],
        ),
      ),
    );
  }
}

Widget listViewScreenAccounts({required listOfAccounts}) {
  return ListView.separated(
    physics: const BouncingScrollPhysics(),
    itemBuilder: (context, index) => itemListViewAccountsGuide(
      context: context,
      accountValueModel: listOfAccounts[index],
      index: index,
    ),
    separatorBuilder: (context, index) => const SizedBox(
      height: 10.0,
    ),
    itemCount: listOfAccounts.length,
  );
}

// Padding(
//                   padding: const EdgeInsets.all(AppPadding.p20),
//                   child: Text(
//                     'هذا الحساب فارغ',
//                     style: getBoldStyle(
//                         color: ColorManager.black, fontSize: FontSize.s20),
//                   ),
//                 )

Widget defaultWidgetButton(context) {
  return DefaultWidgetButton(
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
        keyWidget: ContentGridViewScreens.scaffoldKey,
        overlayContext: context,
        widget: AddAccountDialog(),
      );
    },
    valueBorder: 0,
  );
}
