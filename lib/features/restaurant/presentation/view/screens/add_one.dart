import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/restaurant/presentation/view/widgets/add_one/item_add_one_grid_view.dart';
import 'package:flutter/material.dart';

class RestaurantAddOne extends StatelessWidget {
  const RestaurantAddOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.primary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppPadding.p50),
          topRight: Radius.circular(AppPadding.p50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p28),
        child: Column(
          children: [
            //سوف يتم تغيير الكود لاحقا
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('جبنه اضافى امريكى'),
                ),
                Expanded(
                    child: Container(
                  color: ColorManager.grey,
                  width: double.infinity,
                  height: 0.5,
                )),
              ],
            ),
            itemAddOneGridView(),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('الازالات'),
                ),
                Expanded(
                    child: Container(
                  color: ColorManager.grey,
                  width: double.infinity,
                  height: 0.5,
                )),
              ],
            ),
            itemAddOneGridView(),
          ],
        ),
      ),
    );
  }
}
