


import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/responsive.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/home_screen/view/widgets/expansion_panel_list_home_screen.dart';
import 'package:flutter/material.dart';

Widget sideMenu(context){
    return Container(
      width: AppSize.s250,
      color: ColorManager.grey200,
      child:  const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: AppSize.s12,
            ),
            Icon(
              Icons.camera,
              size: AppSize.s100,
            ),
            ExpansionPanelListHomeScreen(),
            SizedBox(
              height: AppSize.s300,
            ),
          ],
        ),
      ),
    );
}