import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class LatePayInvoice extends StatelessWidget {
  const LatePayInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        Container(
          height:AppSize.s80,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(width: AppSize.s4, color: ColorManager.orange),
              color: ColorManager.orange100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.sim_card_alert,
                color: ColorManager.orange,
              ),
              Text(
              AppStrings.noFoundInvoices,
                style: getLightStyle(
                    color: ColorManager.brown, fontSize: FontSize.s20),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
