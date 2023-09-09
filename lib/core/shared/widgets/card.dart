import 'package:accounting/core/utils/assets_manager.dart';
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({
    Key? key,
     this.icon,
    required this.title,
    required this.imageOr,
     this.elevation,
    this.image,
  }) : super(key: key);

  final IconData? icon;
  final String title;
  final bool imageOr;
  final String? image;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: ColorManager.white,
        elevation: elevation ?? 8,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[


              imageOr?Expanded(child: SizedBox(
                  height: AppPadding.p50,
                  width: AppPadding.p50,

                  child: Image.asset(image!,fit: BoxFit.contain,))) :Icon(icon, size: AppSize.s40, color: ColorManager.orange),
              const SizedBox(
                height: AppSize.s20,
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p8),
                child: Text(title, style: getLightStyle(color: ColorManager.blue,fontSize: FontSize.s16)),
              ),
            ]));
  }
}
