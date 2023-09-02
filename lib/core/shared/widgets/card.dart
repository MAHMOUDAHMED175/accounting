import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: ColorManager.white,
        elevation: 8,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[


              Icon(icon, size: AppSize.s40, color: ColorManager.orange),
              const SizedBox(
                height: AppSize.s20,
              ),
              Text(title, style: getLightStyle(color: ColorManager.blue,fontSize: FontSize.s16)),
            ]));
  }
}
