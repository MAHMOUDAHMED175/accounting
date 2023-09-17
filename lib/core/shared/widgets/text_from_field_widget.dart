import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function()? suffixPressd,
  Function()? taped,
  String? Function(String?)? validate,
  bool isPassword = false,
  String? Function(String?)? submit,
  String? Function(String?)? change,
  IconData? suffixIcon,
  String? hintText,
  labelText,
  IconData? prefix,
  Color? fillsColor,
  bool? readOnly,
  BorderRadius? border,
  int? flex,
  context,
  colorSuffixIcon,
}) =>
    Expanded(
      flex: flex ?? 1,
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: type,
        controller: controller,
        obscureText: isPassword,
        onFieldSubmitted: (s) {
          submit!(s);
        },
        validator: validate,
        onChanged: change,
        onTap: taped,
        readOnly: readOnly ?? false,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(2),
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.4),

            // تغيير لون الـ hint إلى اللون الأزرق
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppPadding.p4),
            borderSide: BorderSide(color: ColorManager.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: border ?? BorderRadius.circular(AppPadding.p8),
            borderSide: BorderSide(color: ColorManager.grey400),
          ),
          filled: true,
          fillColor: fillsColor ?? ColorManager.white,
          prefixIcon: prefix != null ? Icon(prefix) : null,
          hintText: hintText,
          suffixIcon: suffixIcon != null
              ? SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.03,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (suffixIcon != null)
                        Container(
                          height: AppSize.s20,
                          width: 1.5,
                          color: ColorManager.grey400,
                        ),
                      if (suffixIcon != null)
                        const SizedBox(
                          width: AppSize.s20,
                        ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.01,
                        child: IconButton(
                          onPressed: () {
                            suffixPressd!();
                          },
                          icon: Icon(
                            suffixIcon,
                            size: AppSize.s20,
                            color: colorSuffixIcon ?? ColorManager.grey400,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : null,
          labelText: labelText,
          border: const OutlineInputBorder(),
        ),
      ),
    );
