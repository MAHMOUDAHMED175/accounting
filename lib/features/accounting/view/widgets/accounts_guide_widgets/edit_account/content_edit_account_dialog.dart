import 'package:accounting/core/shared/widgets/custom_text_button.dart';
import 'package:accounting/core/shared/widgets/text_from_field_widget.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/responsive.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class ContentEditAccountDialog extends StatefulWidget {
  const ContentEditAccountDialog({super.key});

  @override
  State<ContentEditAccountDialog> createState() =>
      _ContentEditAccountDialogState();
}

class _ContentEditAccountDialogState extends State<ContentEditAccountDialog> {
  TextEditingController accountNameArabicController = TextEditingController();

  TextEditingController accountNameEnglishController = TextEditingController();

  TextEditingController accountMainChooseController = TextEditingController();

  TextEditingController accountCodeController = TextEditingController();

  List<String> listMainAccountDropDown = ["من فضلك اختر", "ارباح", "ديون"];

  String? valueMainAccountDropDown = "من فضلك اختر";

  String selectedOption = '';
  // هذا المتغير سيحتوي على القيمة المختارة (دائن أو مدين)
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorManager.grey, // Border color
            width: 0.4, // Border width
          ),
        ),
        child: SingleChildScrollView(
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
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      color: ColorManager.blue200,
                      child: Padding(
                        padding: const EdgeInsets.all(AppPadding.p16),
                        child: Row(
                          children: [
                            const Text(
                                'تعديل حساب'), // تعديل نص الحوار حسب احتياجاتك
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
                                const Text("الاسم بالعربى"),
                                const SizedBox(
                                  height: AppSize.s8,
                                ),
                                SizedBox(
                                  height: 35,
                                  child: defaultFormField(
                                      controller: accountNameArabicController,
                                      type: TextInputType.text),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: AppSize.s12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("الاسم بالانجليزى"),
                                const SizedBox(
                                  height: AppSize.s8,
                                ),
                                SizedBox(
                                  height: 35,
                                  child: defaultFormField(
                                      readOnly: true,
                                      controller: accountCodeController,
                                      type: TextInputType.text),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppPadding.p8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("حساب رئيسى لهذا الحساب"),
                                const SizedBox(
                                  height: AppSize.s8,
                                ),
                                Container(
                                  height: AppSize.s36,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: ColorManager.grey,
                                    ),
                                  ),
                                  child: DropdownButton(
                                    elevation: 8,
                                    isExpanded: true,
                                    underline: Container(),
                                    focusColor: Colors.transparent,
                                    iconSize: AppSize.s20,
                                    padding: const EdgeInsets.all(8),
                                    value: valueMainAccountDropDown,
                                    items:
                                        listMainAccountDropDown.map((option2) {
                                      return DropdownMenuItem(
                                        value: option2,
                                        child: Text(
                                          option2,
                                          style: getLightStyle(
                                              fontSize: FontSize.s12,
                                              color: ColorManager.black),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        valueMainAccountDropDown =
                                            value.toString();
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: AppSize.s12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("كود"),
                                const SizedBox(
                                  height: AppSize.s8,
                                ),
                                SizedBox(
                                  height: 35,
                                  child: defaultFormField(
                                      readOnly: true,
                                      fillsColor: ColorManager.grey300,
                                      controller: accountCodeController,
                                      type: TextInputType.text),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppPadding.p8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: AppSize.s12,
                          ),
                          Expanded(
                            flex: 1,
                            child: RadioListTile(
                              title: const Text('دائن'),
                              value: 'دائن',
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value.toString();
                                });
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: RadioListTile(
                              title: const Text('مدين'),
                              value: 'مدين',
                              groupValue: selectedOption,
                              contentPadding: EdgeInsets.zero,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value.toString();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (Responsive.isDesktop(context) ||
                        Responsive.isTablet(context))
                      Padding(
                        padding: const EdgeInsets.all(AppPadding.p8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Spacer(),
                            CustomTextButton(
                              backgroundColor: ColorManager.green,
                              text: "حفظ",
                              textColor: ColorManager.white,
                              heightButton: AppSize.s40,
                              onPressed: () {},
                              fontSize: FontSize.s20,
                              valueDoubleBorderRadius: 0,
                            ),
                          ],
                        ),
                      ),
                    if (Responsive.isMobile(context))
                      Padding(
                        padding: const EdgeInsets.all(AppPadding.p8),
                        child: CustomTextButton(
                          width: double.infinity,
                          backgroundColor: ColorManager.green,
                          text: "حفظ",
                          textColor: ColorManager.white,
                          heightButton: AppSize.s40,
                          onPressed: () {},
                          fontSize: FontSize.s20,
                          valueDoubleBorderRadius: 0,
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}