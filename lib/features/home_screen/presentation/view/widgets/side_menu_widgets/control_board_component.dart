import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/side_menu_widgets/item_expansion_panel.dart';
import 'package:accounting/features/home_screen/presentation/view_model/home_screen_cubit.dart';
import 'package:flutter/material.dart';

Widget controlBoardSubItems(context)=>
    Column(
      children: [
        buildSubItem(AppStrings.controlBoard, () {
          HomeScreenCubit.get(context).changeIndex(0);
        }),
      ],
    );
