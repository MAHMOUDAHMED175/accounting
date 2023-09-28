import 'package:accounting/core/shared/widgets/text_from_field_widget.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class SearchAccountsGuide extends StatelessWidget {
  SearchAccountsGuide({super.key});

  final TextEditingController searchAccountsGuideController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorManager.grey, // Border color
          width: 0.4, // Border width
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: SizedBox(
          height: AppSize.s36,
          child: defaultFormField(
              controller: searchAccountsGuideController,
              type: TextInputType.text,
              hintText: AppStrings.search,
              suffixIcon: Icons.keyboard_arrow_down,
              context: context),
        ),
      ),
    );
  }
}
