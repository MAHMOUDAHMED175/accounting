
import 'package:accounting/core/shared/widgets/defaulte_button.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class ButtonsCashierHeaderDown extends StatelessWidget {
  const ButtonsCashierHeaderDown({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
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
    );
  }
}
