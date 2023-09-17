import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
    this.heightButton,
    this.onPressed,
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final double? heightButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightButton ?? AppSize.s40,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey, width: 1.0),
            // إضافة حدود سوداء بسمك 2 بكسل

            borderRadius: borderRadius ??
                BorderRadius.circular(
                  AppPadding.p12,
                ),
          ),
        ),
        child: Text(text,
            maxLines: 1,
            style: getLightStyle(
              color: textColor,
              fontSize: fontSize!,
            )),
      ),
    );
  }
}
