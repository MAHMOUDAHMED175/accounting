import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class RestaurantSearchGridViewWidgets extends StatelessWidget {
  RestaurantSearchGridViewWidgets({super.key});

  var  searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchText,
      autocorrect: true,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: AppPadding.p12),
        hintText: AppStrings.search,
        hintStyle: TextStyle(
          color: ColorManager.grey,
        ),
        // suffixIcon: searchText.text.isNotEmpty
        //     ? IconButton(
        //   onPressed: () => setState(() {
        //     searchText.text = "";
        //   }),
        //   icon: const Icon(
        //     Icons.cancel,
        //     color: Colors.black,
        //   ),
        // )
        //     : const SizedBox.shrink(),
        prefixIcon: Icon(
          Icons.search,
          color: ColorManager.grey,
        ),
        fillColor: ColorManager.white,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.white,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 0,
            strokeAlign: 0,
            style: BorderStyle.solid
          ),

          // borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
