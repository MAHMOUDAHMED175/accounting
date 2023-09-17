import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../../core/shared/widgets/defaulte_widget_button.dart';

class ButtonsCashierHeader extends StatefulWidget {
  const ButtonsCashierHeader({super.key});

  @override
  State<ButtonsCashierHeader> createState() => _ButtonsCashierHeaderState();
}

class _ButtonsCashierHeaderState extends State<ButtonsCashierHeader> {
  List<String> options2 = ['الفرع الرئيسى', 'فرع عمان', 'فرع مصر'];

  String? selectedOption2 = 'الفرع الرئيسى';
  @override
  Widget build(BuildContext context) {
    return Padding(
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
            style:
                getLightStyle(color: ColorManager.grey, fontSize: FontSize.s16),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: AppSize.s4, left: AppSize.s4),
            child: DefaultWidgetButton(
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
                        color: ColorManager.white, fontSize: FontSize.s12),
                  ),
                ],
              ),
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              color: ColorManager.red,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: AppSize.s4, left: AppSize.s4),
            child: DefaultWidgetButton(
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
                        color: ColorManager.white, fontSize: FontSize.s12),
                  ),
                ],
              ),
              onPress: () {},
              color: ColorManager.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: AppSize.s4, left: AppSize.s4),
            child: DefaultWidgetButton(
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
                        color: ColorManager.white, fontSize: FontSize.s12),
                  ),
                ],
              ),
              onPress: () {},
              color: ColorManager.brown,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: AppSize.s4, left: AppSize.s4),
            child: DefaultWidgetButton(
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
                        color: ColorManager.white, fontSize: FontSize.s12),
                  ),
                ],
              ),
              onPress: () {},
              color: ColorManager.orange,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: AppSize.s4, left: AppSize.s4),
            child: DefaultWidgetButton(
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
            padding: const EdgeInsets.only(right: AppSize.s4, left: AppSize.s4),
            child: DefaultWidgetButton(
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
            padding: const EdgeInsets.only(right: AppSize.s4, left: AppSize.s4),
            child: DefaultWidgetButton(
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
            padding: const EdgeInsets.only(right: AppSize.s4, left: AppSize.s4),
            child: DefaultWidgetButton(
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
            padding: const EdgeInsets.only(right: AppSize.s4, left: AppSize.s4),
            child: DefaultWidgetButton(
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
    );
  }
}
