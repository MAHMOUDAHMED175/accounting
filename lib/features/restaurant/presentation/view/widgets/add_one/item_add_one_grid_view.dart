import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

Widget itemAddOneGridView()=>             Expanded(
  child: GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 2.6
    ),
    itemCount: 5,
    itemBuilder: (context, index) {
      return  Container(
        height: 30,
        width: 60,
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(AppPadding.p12),
        ),
        child:  Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: (){},

            hoverColor: ColorManager.blueAccent,

            focusColor: ColorManager.orange,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('جبن قليل الدسم'),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ColorManager.greenOpacity,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  child: Text(
                    "20 SAR",
                    style: TextStyle(
                      color: ColorManager.black,
                      fontSize: 10, // Adjust the font size
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  ),
);