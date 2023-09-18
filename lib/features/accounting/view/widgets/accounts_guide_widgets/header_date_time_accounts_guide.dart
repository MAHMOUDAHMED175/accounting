import 'package:accounting/core/shared/widgets/text_from_field_widget.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class HeaderDateTimeAccountsGuide extends StatelessWidget {
  HeaderDateTimeAccountsGuide({super.key});

  final TextEditingController dateTimeHeaderAccountsGuideController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        AppPadding.p8,
      ),
      child: Row(
        children: [
          InkWell(
            child: Container(
              height: 30,
              width: 30,
              color: ColorManager.blue200,
              child: Icon(
                Icons.keyboard_arrow_up,
                color: ColorManager.black,
              ),
            ),
          ),
          const SizedBox(
            width: 1,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 30,
              width: 30,
              color: ColorManager.blue200,
              child: Icon(
                Icons.keyboard_arrow_down,
                color: ColorManager.black,
              ),
            ),
          ),
          const SizedBox(
            width: 3,
          ),
          Expanded(
            child: SizedBox(
              height: AppSize.s32,
              child: defaultFormField(
                  controller: dateTimeHeaderAccountsGuideController,
                  type: TextInputType.text,
                  border: BorderRadius.circular(0),
                  hintText: 'الفتره من / الى'),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: Container(
              height: 30,
              width: 30,
              color: ColorManager.grey200,
              child: Icon(
                Icons.keyboard_arrow_right_outlined,
                color: ColorManager.grey,
              ),
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 30,
              width: 30,
              color: ColorManager.grey200,
              child: Icon(
                Icons.keyboard_arrow_left_outlined,
                color: ColorManager.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
