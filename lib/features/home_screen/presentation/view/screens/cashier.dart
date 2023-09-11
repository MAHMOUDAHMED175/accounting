import 'package:accounting/core/shared/widgets/defaulte_button.dart';
import 'package:accounting/core/utils/assets_manager.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CashierScreen extends StatefulWidget {
  const CashierScreen({super.key});

  @override
  State<CashierScreen> createState() => _CashierScreenState();
}

class _CashierScreenState extends State<CashierScreen> {
  List<String> options2 = ['الفرع الرئيسى', 'فرع عمان', 'فرع مصر'];

  String? selectedOption2 = 'الفرع الرئيسى';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: Row(
              children: [
                Text(
                  'الفرع:',
                  style: getLightStyle(
                      color: ColorManager.black, fontSize: FontSize.s16),
                ),
                const SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Container(
                      color: Colors.white,
                      height: 40,
                      child: DropdownButton(
                        elevation: 8,
                        underline: Container(),
                        focusColor: Colors.transparent,
                        padding: const EdgeInsets.all(8),
                        value: selectedOption2,
                        items: options2.map((option2) {
                          return DropdownMenuItem(
                            child: Text(option2),
                            value: option2,
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedOption2 = value.toString();
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Text(
                  DateFormat('a HH:mm dd/MM/yyyy').format(DateTime.now()),
                  style: getLightStyle(
                      color: ColorManager.grey, fontSize: FontSize.s16),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 6,
                    height: AppSize.s40,
                    widget: Row(
                      children: [
                        Icon(
                          Icons.home,
                          size: AppSize.s14,
                          color: ColorManager.white,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          ' الصفحه الرئيسه',
                          style: getLightStyle(
                              color: ColorManager.white,
                              fontSize: FontSize.s12),
                        ),
                      ],
                    ),
                    onPress: () {},
                    color: ColorManager.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 6,
                    height: AppSize.s40,
                    widget: Row(
                      children: [
                        Icon(
                          Icons.settings_backup_restore,
                          size: AppSize.s14,
                          color: ColorManager.white,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          'مرتجع البيانات',
                          style: getLightStyle(
                              color: ColorManager.white,
                              fontSize: FontSize.s12),
                        ),
                      ],
                    ),
                    onPress: () {},
                    color: ColorManager.blue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 6,
                    height: AppSize.s40,
                    widget: Row(
                      children: [
                        Icon(
                          Icons.add_circle_outlined,
                          size: AppSize.s14,
                          color: ColorManager.white,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          'اضافة مصاريف',
                          style: getLightStyle(
                              color: ColorManager.white,
                              fontSize: FontSize.s12),
                        ),
                      ],
                    ),
                    onPress: () {},
                    color: ColorManager.brown,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 6,
                    height: AppSize.s40,
                    widget: Row(
                      children: [
                        Icon(
                          Icons.stop_circle,
                          size: AppSize.s14,
                          color: ColorManager.white,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          'مبيعات معلقه',
                          style: getLightStyle(
                              color: ColorManager.white,
                              fontSize: FontSize.s12),
                        ),
                      ],
                    ),
                    onPress: () {},
                    color: ColorManager.orange,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 6,
                    height: AppSize.s40,
                    widget: Icon(
                      Icons.zoom_out_map,
                      size: AppSize.s14,
                      color: ColorManager.white,
                    ),
                    onPress: () {},
                    color: ColorManager.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 6,
                    height: AppSize.s40,
                    widget: Icon(
                      Icons.calculate,
                      size: AppSize.s14,
                      color: ColorManager.white,
                    ),
                    onPress: () {},
                    color: ColorManager.green,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 6,
                    height: AppSize.s40,
                    widget: Icon(
                      Icons.work,
                      size: AppSize.s14,
                      color: ColorManager.white,
                    ),
                    onPress: () {},
                    color: ColorManager.blue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 6,
                    height: AppSize.s40,
                    widget: Icon(
                      Icons.cancel_presentation,
                      size: AppSize.s14,
                      color: ColorManager.white,
                    ),
                    onPress: () {},
                    color: ColorManager.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 6,
                    height: AppSize.s40,
                    widget: Icon(
                      Icons.arrow_circle_left_outlined,
                      size: AppSize.s18,
                      color: ColorManager.white,
                    ),
                    onPress: () {},
                    color: ColorManager.blue,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: ColorManager.white,
                    child: const Column(
                      children: [],
                    ),
                  ),
                ),
                const SizedBox(
                  width: AppSize.s8,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      const HeaderCashier(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(AppPadding.p12),
                          child: GridView.builder(
                            itemCount: 80,
                            itemBuilder: (context, index) => InkWell(
                                hoverColor: ColorManager.blue,
                                focusColor: ColorManager.blue,
                                onTap: () {},
                                // child: const ItemGridViewMenu()
                                child: const ItemCashier()),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 1,
                            ),
                          ),
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
              children: [
                DefaultButton(
                  valueBorder: 0,
                  height: AppSize.s40,
                  widget: Row(
                    children: [
                      Icon(
                        Icons.edit,
                        size: AppSize.s14,
                        color: ColorManager.white,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        'مسوده appstring',
                        style: getLightStyle(
                            color: ColorManager.white, fontSize: FontSize.s12),
                      ),
                    ],
                  ),
                  onPress: () {},
                  color: ColorManager.blue,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 0,
                    height: AppSize.s40,
                    widget: Row(
                      children: [
                        Icon(
                          Icons.edit,
                          size: AppSize.s14,
                          color: ColorManager.white,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          ' بيان سعر',
                          style: getLightStyle(
                              color: ColorManager.white,
                              fontSize: FontSize.s12),
                        ),
                      ],
                    ),
                    onPress: () {},
                    color: ColorManager.orange,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 0,
                    height: AppSize.s40,
                    widget: Row(
                      children: [
                        Icon(
                          Icons.stop_circle,
                          size: AppSize.s14,
                          color: ColorManager.white,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          ' تعليق',
                          style: getLightStyle(
                              color: ColorManager.white,
                              fontSize: FontSize.s12),
                        ),
                      ],
                    ),
                    onPress: () {},
                    color: ColorManager.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 0,
                    height: AppSize.s40,
                    widget: Row(
                      children: [
                        Icon(
                          Icons.turn_slight_right,
                          size: AppSize.s14,
                          color: ColorManager.white,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          'بيع أجل',
                          style: getLightStyle(
                              color: ColorManager.white,
                              fontSize: FontSize.s12),
                        ),
                      ],
                    ),
                    onPress: () {},
                    color: ColorManager.tealPro,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 0,
                    height: AppSize.s40,
                    widget: Row(
                      children: [
                        Icon(
                          Icons.payment,
                          size: AppSize.s14,
                          color: ColorManager.white,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          'بطاقه',
                          style: getLightStyle(
                              color: ColorManager.white,
                              fontSize: FontSize.s12),
                        ),
                      ],
                    ),
                    onPress: () {},
                    color: ColorManager.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 0,
                    height: AppSize.s40,
                    widget: Row(
                      children: [
                        Icon(
                          Icons.payments_sharp,
                          size: AppSize.s14,
                          color: ColorManager.white,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          'طرق تحصيل متعدده',
                          style: getLightStyle(
                              color: ColorManager.white,
                              fontSize: FontSize.s12),
                        ),
                      ],
                    ),
                    onPress: () {},
                    color: ColorManager.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 0,
                    height: AppSize.s40,
                    widget: Row(
                      children: [
                        Icon(
                          Icons.money,
                          size: AppSize.s14,
                          color: ColorManager.white,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          'بيع كاش',
                          style: getLightStyle(
                              color: ColorManager.white,
                              fontSize: FontSize.s12),
                        ),
                      ],
                    ),
                    onPress: () {},
                    color: ColorManager.green,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 0,
                    height: AppSize.s40,
                    widget: Row(
                      children: [
                        Text(
                          'الاجمالى ',
                          style: getLightStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s12),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          '00.00 ',
                          style: getLightStyle(
                              color: ColorManager.blue, fontSize: FontSize.s12),
                        ),
                      ],
                    ),
                    onPress: () {},
                    // color: ColorManager.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppSize.s4, left: AppSize.s4),
                  child: DefaultButton(
                    valueBorder: 0,
                    height: AppSize.s40,
                    widget: Row(
                      children: [
                        Icon(
                          Icons.cancel,
                          size: AppSize.s14,
                          color: ColorManager.white,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          'الغاء الطلب',
                          style: getLightStyle(
                              color: ColorManager.white,
                              fontSize: FontSize.s12),
                        ),
                      ],
                    ),
                    onPress: () {},
                    color: ColorManager.red,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                    right: AppSize.s4,
                  ),
                  child: DefaultButton(
                    valueBorder: 0,
                    height: AppSize.s40,
                    widget: Row(
                      children: [
                        Icon(
                          Icons.print,
                          size: AppSize.s14,
                          color: ColorManager.white,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          'طباعه اخر فاتوره',
                          style: getLightStyle(
                              color: ColorManager.white,
                              fontSize: FontSize.s12),
                        ),
                      ],
                    ),
                    onPress: () {},
                    color: ColorManager.red,
                  ),
                ),
                DefaultButton(
                  valueBorder: 0,
                  height: AppSize.s40,
                  widget: Row(
                    children: [
                      Icon(
                        Icons.watch_later,
                        size: AppSize.s14,
                        color: ColorManager.white,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        'أخر المبيعات',
                        style: getLightStyle(
                            color: ColorManager.white, fontSize: FontSize.s12),
                      ),
                    ],
                  ),
                  onPress: () {},
                  color: ColorManager.blue,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeaderCashier extends StatefulWidget {
  const HeaderCashier({super.key});

  @override
  State<HeaderCashier> createState() => _HeaderCashierState();
}

class _HeaderCashierState extends State<HeaderCashier> {
  int selectedButtonIndex = 0; // تخزين الزر الحالي الذي تم النقر عليه

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppPadding.p12),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p8),
            child: DefaultButton(
              widget: Text(
                'الكل',
                style: getLightStyle(
                  color: selectedButtonIndex == 0
                      ? ColorManager.deepPurpleAccent
                      : ColorManager.white,
                ),
              ),
              onPress: () {
                setState(() {
                  selectedButtonIndex = 0;
                });
                // قم بإجراء الإجراء الخاص بالزر هنا
              },
              valueBorder: 6,
              color: selectedButtonIndex == 0
                  ? ColorManager.white
                  : ColorManager.deepPurpleAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p8),
            child: DefaultButton(
              widget: Text(
                'اكسسوارات',
                style: getLightStyle(
                  color: selectedButtonIndex == 1
                      ? ColorManager.deepPurpleAccent
                      : ColorManager.white,
                ),
              ),
              onPress: () {
                setState(() {
                  selectedButtonIndex = 1;
                });
                // قم بإجراء الإجراء الخاص بالزر هنا
              },
              valueBorder: 6,
               color: selectedButtonIndex == 1
                  ? ColorManager.white
                  : ColorManager.deepPurpleAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p8),
            child: DefaultButton(
              widget: Text(
                'الالكترونيات',
                style: getLightStyle(
                  color: selectedButtonIndex == 2
                      ? ColorManager.deepPurpleAccent
                      : ColorManager.white,
                ),
              ),
              onPress: () {
                setState(() {
                  selectedButtonIndex = 2;
                });
                // قم بإجراء الإجراء الخاص بالزر هنا
              },
              valueBorder: 6,
               color: selectedButtonIndex == 2
                  ? ColorManager.white
                  : ColorManager.deepPurpleAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p8),
            child: DefaultButton(
              widget: Text(
                'ملابس رجالى',
                style: getLightStyle(
                  color: selectedButtonIndex == 3
                      ? ColorManager.deepPurpleAccent
                      : ColorManager.white,
                ),
              ),
              onPress: () {
                setState(() {
                  selectedButtonIndex = 3;
                });
                // قم بإجراء الإجراء الخاص بالزر هنا
              },
              valueBorder: 6,
               color: selectedButtonIndex == 3
                  ? ColorManager.white
                  : ColorManager.deepPurpleAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p8),
            child: DefaultButton(
              widget: Text(
                'منظفات',
                style: getLightStyle(
                  color: selectedButtonIndex == 4
                      ? ColorManager.deepPurpleAccent
                      : ColorManager.white,
                ),
              ),
              onPress: () {
                setState(() {
                  selectedButtonIndex = 4;
                });
                // قم بإجراء الإجراء الخاص بالزر هنا
              },
              valueBorder: 6,
               color: selectedButtonIndex == 4
                  ? ColorManager.white
                  : ColorManager.deepPurpleAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p8),
            child: DefaultButton(
              widget: Text(
                'موبايلات',
                style: getLightStyle(
                  color: selectedButtonIndex == 5
                      ? ColorManager.deepPurpleAccent
                      : ColorManager.white,
                ),
              ),
              onPress: () {
                setState(() {
                  selectedButtonIndex = 5;
                });
                // قم بإجراء الإجراء الخاص بالزر هنا
              },
              valueBorder: 6,
               color: selectedButtonIndex == 5
                  ? ColorManager.white
                  : ColorManager.deepPurpleAccent,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCashier extends StatelessWidget {
  const ItemCashier({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.white,
      child: Column(
        children: [
          Container(
            color: ColorManager.red,
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p4),
              child: Row(
                children: [
                  Text(
                    '198',
                    style: getLightStyle(color: ColorManager.orange200),
                  ),
                  Icon(Icons.check_circle,
                      size: AppSize.s16, color: ColorManager.orange200),
                  Spacer(),
                  Text(
                    '55',
                    style: getLightStyle(color: ColorManager.white),
                  ),
                  Icon(Icons.money,
                      size: AppSize.s16, color: ColorManager.white),
                ],
              ),
            ),
          ),
          Expanded(
              child: Image.asset(
            ImageAssets.solidDrink,
            fit: BoxFit.contain,
          )),
          Text(
            'انفينكس نوت  680 ْ x'
            'انفينكس نوت  680 ْ x'
            'انفينكس نوت  680 ْ x',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
