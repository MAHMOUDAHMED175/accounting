import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/home_screen/view_model/home_screen_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/font_manager.dart';
import '../../../../core/utils/styles_manager.dart';

class HeaderHomeScreen extends StatelessWidget {
  const HeaderHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.blueAccent,
      height: AppSize.s60,
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                HomeScreenCubit.get(context).changeOpenSide();
                // print("${HomeScreenCubit.get(context).openSide} ");
              },
              icon: Icon(
                Icons.menu_open_rounded,
                size: AppSize.s40,
                color: ColorManager.white,
              ),
            ),
            const Spacer(),
            Text(
              AppStrings.engineeringConsulting,
              style: getLightStyle(
                  color: ColorManager.white, fontSize: FontSize.s18),
            ),
            const SizedBox(
              width: AppSize.s80,
            ),
            Icon(
              Icons.language,
              color: ColorManager.white,
            ),
            const SizedBox(
              width: AppSize.s12,
            ),
            Icon(
              Icons.message,
              color: ColorManager.white,
            ),
            const SizedBox(
              width: AppSize.s12,
            ),
            Icon(
              Icons.notifications_active,
              color: ColorManager.white,
            ),
            const SizedBox(
              width: AppSize.s12,
            ),
            Icon(
              Icons.payments_outlined,
              color: ColorManager.white,
            ),
            const SizedBox(
              width: AppSize.s12,
            ),
            Icon(
              Icons.person,
              color: ColorManager.white,
            ),
          ],
        ),
      ),
    );
  }
}
