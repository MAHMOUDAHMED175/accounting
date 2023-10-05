import 'package:accounting/core/shared/widgets/custom_text_button.dart';
import 'package:accounting/core/shared/widgets/dropdown_menu_item_button.dart';
import 'package:accounting/core/shared/widgets/flutter_toast.dart';
import 'package:accounting/core/shared/widgets/text_from_field_widget.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/responsive.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/accounting/presentaition/view_model/managers/cubit/accounts_cubit.dart';
import 'package:accounting/features/accounting/presentaition/view_model/managers/cubit/accounts_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContentAddAccountDialog extends StatelessWidget {
  ContentAddAccountDialog({super.key});

  TextEditingController accountTypeController = TextEditingController();

  TextEditingController accountNameArabicController = TextEditingController();

  TextEditingController accountNameEnglishController = TextEditingController();

  TextEditingController accountMainChooseController = TextEditingController();

  TextEditingController accountCodeController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var cubitAccount = AccountsCubit.get(context);

    return BlocConsumer<AccountsCubit, AccountsState>(
      listener: (context, state) {
        if (state is PostAccountsTreeErrorState) {
          showToast(text: "مبروك مبروك مبروك", state: ToastStates.SUCCECC);
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
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
                                  // overlayEntry?.remove();
                                  Navigator.of(context).pop();
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
                                const Text("نوع الحساب"),
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
                                  child: defaultDropdownMenuItemButton(
                                      value: cubitAccount
                                          .valueTypeAccountDropDown!,
                                      list:
                                          cubitAccount.listTypeAccountDropDown,
                                      textStyle: getLightStyle(
                                          fontSize: FontSize.s12,
                                          color: ColorManager.black),
                                      onChanged: (value) {
                                        cubitAccount
                                            .changeDropdownMenuItemValueTypeAccount(
                                                value.toString());
                                      },
                                      iconSize: AppSize.s20),
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
                                  height: AppSize.s60,
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
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("الاسم بالعربى"),
                                const SizedBox(
                                  height: AppSize.s8,
                                ),
                                SizedBox(
                                  height: AppSize.s60,
                                  child: defaultFormField(
                                      controller: accountTypeController,
                                      type: TextInputType.text,
                                      validate: (value) {
                                        if (value!.isEmpty) {
                                          return "ضيف اسم الحساب باللغه العربيه";
                                        }
                                        return null;
                                      }),
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
                                  height: AppSize.s60,
                                  child: defaultFormField(
                                    controller: accountCodeController,
                                    type: TextInputType.text,
                                    validate: (value) {
                                      if (value!.isEmpty) {
                                        return "ضيف اسم الحساب باللغه الانجليزيه";
                                      }
                                    },
                                  ),
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
                                  child: defaultDropdownMenuItemButton(
                                      value: cubitAccount
                                          .valueMainAccountDropDown!,
                                      list:
                                          cubitAccount.listMainAccountDropDown,
                                      textStyle: getLightStyle(
                                          fontSize: FontSize.s12,
                                          color: ColorManager.black),
                                      onChanged: (value) {
                                        cubitAccount
                                            .changeDropdownMenuItemValueMainAccount(
                                                value.toString());
                                      },
                                      iconSize: AppSize.s20),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: AppSize.s12,
                          ),
                          Expanded(
                            flex: 1,
                            child: RadioListTile(
                              title: const Text('دائن'),
                              value: 'دائن',
                              groupValue: cubitAccount.selectedOption,
                              onChanged: (value) {
                                cubitAccount
                                    .selectedOptionRadio(value.toString());
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: RadioListTile(
                              title: const Text('مدين'),
                              value: 'مدين',
                              groupValue: cubitAccount.selectedOption,
                              contentPadding: EdgeInsets.zero,
                              onChanged: (value) {
                                cubitAccount
                                    .selectedOptionRadio(value.toString());
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    //bad code need to refactor

                    Padding(
                      padding: const EdgeInsets.all(AppPadding.p8),
                      child: CustomTextButton(
                        width: (Responsive.isDesktop(context) ||
                                Responsive.isTablet(context))
                            ? AppSize.s120
                            : double.infinity,
                        backgroundColor: ColorManager.green,
                        text: "حفظ",
                        textColor: ColorManager.white,
                        heightButton: AppSize.s40,
                        onPressed: () {
                          cubitAccount.postAccountTree(
                              parentId: 1,
                              accountLevel: 2,
                              englishName: "englishName",
                              arabicName: "arabicName",
                              description: "description",
                              haveSub: true,
                              accountTypeId: 1,
                              accountCloseTypeId: 1,
                              accountGroupId: 1,
                              cashFlowTypeId: 1);

                          // if (formKey.currentState!.validate()) {}
                        },
                        fontSize: FontSize.s20,
                        valueDoubleBorderRadius: 0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
