import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/restaurant/presentation/view/widgets/pay_widgets/buttons_restaurant_pay_and_kitchen_and_delete.dart';
import 'package:accounting/features/restaurant/presentation/view/widgets/pay_widgets/no_data_restaurant_pay.dart';
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
        bool data = true;
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
                      data ? const ItemsClientWillPay() : noDataRestaurantPay(),
                      const Spacer(),
                      buttonsRestaurantPayAndKitchenAndDelete()
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

class ItemsClientWillPay extends StatelessWidget {
  const ItemsClientWillPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Stack(alignment: Alignment.center, children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: ColorManager.blue,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      Container(
                        height: 3,
                        width: 3,
                        decoration: BoxDecoration(
                            color: ColorManager.white,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ]),
                    Container(
                      color: ColorManager.grey,
                      width: 0.5,
                      height: 15,
                    ),
                    Stack(alignment: Alignment.center, children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: ColorManager.blue,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      Container(
                        height: 3,
                        width: 3,
                        decoration: BoxDecoration(
                            color: ColorManager.white,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ]),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('رقم الطلب  . 214sd54f624518'),
                      SizedBox(
                        height: AppSize.s8,
                      ),
                      Text('Table 118 . floot 2'),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ItemListViewClientWillPay();
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: 5),
            ),
          ],
        ),
      ),
    );
  }
}

Widget ItemListViewClientWillPay() {
  return Padding(
    padding: const EdgeInsets.all(AppPadding.p16),
    child: Column(
      children: [
        Row(children: [
          Text(
            '2 x بيتزا سوبرمان 😂  ',
            style: getMediumStyle(
                color: ColorManager.orange,
                fontSize: FontSize.s20),
          )
        ])
      ],
    ),
  );
}

class BodyRestaurantScreens extends StatelessWidget {
  const BodyRestaurantScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return RestaurantCubit.get(context)
        .restaurantScreen[RestaurantCubit.get(context).restaurantCuttentIndex];
  }
}
