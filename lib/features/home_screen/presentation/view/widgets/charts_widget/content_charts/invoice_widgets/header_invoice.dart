import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class HeaderInvoice extends StatelessWidget {
  const HeaderInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppPadding.p8),
      child: Row(children: [
        Text("الفواتير من 29/09/2024 الى 29/10/2024",style: getBoldStyle(color: ColorManager.black,fontSize: FontSize.s18),),
        SizedBox(
          width: AppSize.s4,
        ),
        Container(
          decoration: BoxDecoration(
            color: ColorManager.blue,
          ),
          child: TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: ColorManager.black,
            ),
            label: Text(
              "التفاصيل",
              style: getBoldStyle(color: ColorManager.black),
            ),
          ),
        ),
        Spacer(),

      ]),
    );
  }
}
