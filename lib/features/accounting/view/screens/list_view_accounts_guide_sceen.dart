import 'package:accounting/core/shared/widgets/text_from_field_widget.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class ListViewAccountsGuideScreen extends StatelessWidget {
  ListViewAccountsGuideScreen({super.key});
  TextEditingController accountTypeController = TextEditingController();
  TextEditingController accountNameArabicController = TextEditingController();
  TextEditingController accountNameEnglishController = TextEditingController();
  TextEditingController accountMainChooseController = TextEditingController();
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
            Container(
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
                          const Text(
                              'أضف حساب'), // تعديل نص الحوار حسب احتياجاتك
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
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("نوع الحساب"),
                              SizedBox(
                                height: AppSize.s8,
                              ),
                              SizedBox(
                                height: 35,
                                child: defaultFormField(
                                    controller: accountTypeController,
                                    type: TextInputType.text),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: AppSize.s12,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("نوع الحساب"),
                              SizedBox(
                                height: AppSize.s8,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
            // Expanded(
            //   child: ListView.separated(
            //     itemBuilder: (context, index) {
            //       return itemListViewAccountsGuide(context, index);
            //     },
            //     separatorBuilder: (context, index) {
            //       return const Divider();
            //     },
            //     itemCount: 10,
            //   ),
            // ),
            // DefaultWidgetButton(
            //   height: AppSize.s50,
            //   color: ColorManager.white,
            //   widget: Row(
            //     children: [
            //       Icon(
            //         Icons.add_circle_outline,
            //         color: ColorManager.blue,
            //         size: FontSize.s20,
            //       ),
            //       const SizedBox(
            //         width: AppSize.s12,
            //       ),
            //       Text(
            //         'اضف حساب',
            //         style: getBoldStyle(
            //             color: ColorManager.blue, fontSize: FontSize.s16),
            //       )
            //     ],
            //   ),
            //   onPress: () {
            //     addAccountDialog(
            //       context,
            //       accountTypeController,
            //       accountNameArabicController,
            //       accountNameEnglishController,
            //       accountMainChooseController,
            //     );
            //   },
            //   valueBorder: 0,
            // ),
          ],
        ),
      ),
    );
  }
}

// HeaderDateTimeAccountsGuide(),

// // no data
// Padding(
// padding: const EdgeInsets.all(AppPadding.p20),
// child: Text(
// 'هذا الحساب فارغ',
// style: getBoldStyle(
// color: ColorManager.black, fontSize: FontSize.s20),
// ),
// ),
