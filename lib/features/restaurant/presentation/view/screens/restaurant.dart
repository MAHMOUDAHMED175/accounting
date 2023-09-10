import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/restaurant/presentation/view/widgets/pay_widgets/buttons_restaurant_pay_and_kitchen_and_delete.dart';
import 'package:accounting/features/restaurant/presentation/view_model/reastaurant_cubit.dart';
import 'package:accounting/features/restaurant/presentation/view_model/reastaurant_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Restaurant extends StatelessWidget {
  const Restaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RestaurantCubit, RestaurantState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Row(
            children: [
              Expanded(
                flex: 3,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: ColorManager.blueAccent,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(AppSize.s60),
                            // topRight: Radius.circular(50),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: AppSize.s60),
                      child: BodyRestaurantScreens(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                       buttonsRestaurantPayAndKitchenAndDelete(true)
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}



class BodyRestaurantScreens extends StatelessWidget {
  const BodyRestaurantScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return RestaurantCubit.get(context)
        .restaurantScreen[RestaurantCubit.get(context).restaurantCuttentIndex];
  }
}
