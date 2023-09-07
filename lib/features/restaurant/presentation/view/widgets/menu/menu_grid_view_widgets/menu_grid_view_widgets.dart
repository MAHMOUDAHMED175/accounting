import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/responsive.dart';
import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/restaurant/presentation/view/widgets/menu/menu_grid_view_widgets/image_item_grid_view_menu.dart';
import 'package:accounting/features/restaurant/presentation/view/widgets/menu/menu_grid_view_widgets/item_menu_grid_view.dart';
import 'package:accounting/features/restaurant/presentation/view_model/reastaurant_cubit.dart';
import 'package:accounting/features/restaurant/presentation/view_model/reastaurant_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../restaurant_search_widgets/restaurant_search_widgets.dart';

class RestaurantGridViewWidgetMenu extends StatelessWidget {
  const RestaurantGridViewWidgetMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RestaurantCubit, RestaurantState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorManager.primary,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppSize.s50),
              topRight: Radius.circular(AppSize.s50),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppPadding.p20),
                child: Row(
                  children: [
                    Expanded(flex: 8, child: RestaurantSearchWidgets()),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          RestaurantCubit.get(context).changeGridViewViewer();
                        },
                        icon: Icon(
                          Icons.grid_view_outlined,
                          color: ColorManager.blueAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(AppPadding.p12),
                        child: GridView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) => InkWell(
                              hoverColor: ColorManager.blue,
                              focusColor: ColorManager.blue,
                              onTap: () {},
                              // child: const ItemGridViewMenu()
                              child: RestaurantCubit.get(context).gridViewViewer
                                  ?  const ItemGridViewMenu()
                                  :  itemListViewMenu(context),

                          ),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: Responsive.isDesktop(context) ||
                                    Responsive.isTablet(context)
                                ?RestaurantCubit.get(context).gridViewViewer? 4:2
                                : RestaurantCubit.get(context).gridViewViewer?2:1,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            childAspectRatio: RestaurantCubit.get(context).gridViewViewer?1:3.2,
                          ),
                        ),
                      ),
                    )

            ],
          ),
        );
      },
    );
  }
}

Widget itemListViewMenu(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(AppSize.s16),
      // Adjust the border radius
      color: ColorManager.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2), // Add a subtle shadow
          spreadRadius: 2,
          blurRadius: 4,
          offset: Offset(0, 2),
        ),
      ],
    ),
    padding: const EdgeInsets.all(AppSize.s16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        imageItemGridViewMenu(height: AppSize.s100),
        SizedBox(width:MediaQuery.maybeSizeOf(context)!.height * 0.002), // Add some spacing between image and text
        Expanded(
          flex: 2, // Adjust the flex value
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  'جبنه اسيوى',
                  style: getBoldStyle(
                      color: ColorManager.black, fontSize: FontSize.s18),
                ),
              ),
              // Spacer(), // Add vertical spacing
              Expanded(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: ColorManager.greenOpacity,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                      child: Text(
                        "20 ر.س",
                        style: TextStyle(
                          color: ColorManager.black,
                          fontSize: 14, // Adjust the font size
                        ),
                      ),
                    ),
                    SizedBox(width: AppSize.s20), // Add horizontal spacing
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: ColorManager.deepOpacity,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                      child: Text(
                        "50 ${AppStrings.avilable}",
                        style: TextStyle(
                          color: ColorManager.black,
                          fontSize: 14, // Adjust the font size
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        PopupMenuButton<String>(
          color: ColorManager.white,
          elevation: 0,
          child: Icon(Icons.info, color: ColorManager.blue),
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
                      title: Text("${AppStrings.RSA} 20"),
                    ),
                    SizedBox(height: 5),
                    ListTile(
                      leading: Icon(
                        Icons.menu,
                        color: ColorManager.black,
                      ),
                      title: Text("${AppStrings.avilable} 50"),
                    ),
                  ],
                ),
              ),
            ];
          },
        ),
      ],
    ),
  );
}
