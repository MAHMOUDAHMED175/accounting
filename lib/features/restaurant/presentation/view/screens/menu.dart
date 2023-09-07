
import 'package:accounting/features/restaurant/presentation/view/widgets/menu/menu_grid_view_widgets/menu_grid_view_widgets.dart';
import 'package:accounting/features/restaurant/presentation/view/widgets/menu/restaurant_search_widgets/restaurant_search_widgets.dart';
import 'package:flutter/material.dart';

class RestaurantMenu extends StatelessWidget {
  const RestaurantMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Expanded(child: RestaurantGridViewWidgetMenu());
  }
}



