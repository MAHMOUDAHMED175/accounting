import 'package:accounting/core/shared/widgets/defaulte_widget_button.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class HeaderCashierItems extends StatefulWidget {
  const HeaderCashierItems({super.key});

  @override
  State<HeaderCashierItems> createState() => _HeaderCashierItemsState();
}

class _HeaderCashierItemsState extends State<HeaderCashierItems> {
  int selectedButtonIndex = 0; // تخزين الزر الحالي الذي تم النقر عليه

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppPadding.p12),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p8),
            child: DefaultWidgetButton(
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
            child: DefaultWidgetButton(
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
            child: DefaultWidgetButton(
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
            child: DefaultWidgetButton(
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
            child: DefaultWidgetButton(
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
            child: DefaultWidgetButton(
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
