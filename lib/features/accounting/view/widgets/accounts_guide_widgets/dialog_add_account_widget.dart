import 'package:accounting/core/shared/widgets/text_from_field_widget.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

Future<void> addAccountDialog(
  BuildContext context,
  accountTypeController,
  accountNameArabicController,
  accountNameEnglishController,
  accountMainChooseController,
) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: ColorManager.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: ColorManager.blue200,
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p16),
                  child: Row(
                    children: [
                      const Text('أضف حساب'), // تعديل نص الحوار حسب احتياجاتك
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.cancel_outlined,
                            color: ColorManager.grey,
                          ))
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("نوع الحساب"),
                      SizedBox(
                        height: AppSize.s8,
                      ),
                      defaultFormField(
                          controller: accountTypeController,
                          type: TextInputType.text),
                    ],
                  ),
                  SizedBox(
                    width: AppSize.s12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("نوع الحساب"),
                      SizedBox(
                        height: AppSize.s8,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
