import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/restaurant/presentation/view/widgets/menu/menu_grid_view_widgets/image_item_grid_view_menu.dart';
import 'package:flutter/material.dart';

class ItemGridViewMenu extends StatelessWidget {
  const ItemGridViewMenu({
    Key? key,
    this.elevation,
  }) : super(key: key);

  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        contentItemGridViewMenu(),
        imageItemGridViewMenu(height:AppSize.s120),
      ],
    );
  }
}
Widget contentItemGridViewMenu()=>Align(
  alignment: Alignment.bottomCenter,
  child: Container(
    height: AppSize.s150,
    width: AppSize.s250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: ColorManager.white,
    ),
    child: Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: PopupMenuButton<String>(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: Icon(Icons.info, color: ColorManager.blue),
            ),
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'Item 1',

                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.money,
                          color: ColorManager.black,
                        ),
                        title: const Text("${AppStrings.RSA} 20"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.menu,
                          color: ColorManager.black,
                        ),
                        title: const Text("${AppStrings.avilable} 50"),
                      ),
                    ],
                  ),
                ),
              ];
            },
          ),
        ),
        const Spacer(),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('جبنه اسيوى'),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: ColorManager.greenOpacity),
                  height: 30,
                  child: Center(child: Text("20 ر.س",
                    style: getLightStyle(
                        color: ColorManager.black,
                        fontSize: FontSize.s10),)),
                ),
              ),
              const SizedBox(
                width: AppSize.s4,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: ColorManager.deepOpacity),
                  height: 30,
                  child: Center(
                      child: Text(
                        "50 ${AppStrings.avilable}",
                        style: getLightStyle(
                            color: ColorManager.black,
                            fontSize: FontSize.s10),
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);