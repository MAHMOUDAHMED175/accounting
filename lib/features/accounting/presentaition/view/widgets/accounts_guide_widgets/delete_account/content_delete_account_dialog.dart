import 'package:accounting/core/shared/widgets/custom_text_button.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/utils/values_manager.dart';

class ContentDeleteAccountDialog extends StatelessWidget {
  // هذا المتغير سيحتوي على القيمة المختارة (دائن أو مدين)
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppPadding.p4),
          color: ColorManager.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                color: ColorManager.blue200,
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p16),
                  child: Row(
                    children: [
                      const Text('حذف حساب'), // تعديل نص الحوار حسب احتياجاتك
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            // overlayEntry?.remove();
                          },
                          icon: Icon(
                            Icons.cancel_outlined,
                            color: ColorManager.grey,
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppSize.s28,
              ),
              Text(
                'رسالة تأكيد',
                style: getBoldStyle(
                    color: ColorManager.black, fontSize: FontSize.s22),
              ),
              SizedBox(
                height: AppSize.s14,
              ),
              Text(
                'Are you sure you want to delete the follwing accounts?',
                style: getLightStyle(
                    color: ColorManager.black, fontSize: FontSize.s16),
              ),
              SizedBox(
                height: AppSize.s28,
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p8),
                child: CustomTextButton(
                  width: AppSize.s100,
                  backgroundColor: ColorManager.white,
                  text: "اسم الحساب اللى هيتمسح",
                  textColor: ColorManager.black,
                  heightButton: AppSize.s40,
                  onPressed: () {},
                  fontSize: FontSize.s10,
                  valueDoubleBorderRadius: 0,
                ),
              ),
              SizedBox(
                height: AppSize.s28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: CustomTextButton(
                      backgroundColor: ColorManager.green,
                      text: "نعم",
                      textColor: ColorManager.white,
                      heightButton: AppSize.s40,
                      onPressed: () {},
                      fontSize: FontSize.s16,
                      valueDoubleBorderRadius: 0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: CustomTextButton(
                      width: AppSize.s100,
                      backgroundColor: ColorManager.red,
                      text: "لا",
                      textColor: ColorManager.white,
                      heightButton: AppSize.s40,
                      onPressed: () {},
                      fontSize: FontSize.s16,
                      valueDoubleBorderRadius: 0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
