import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/home_screen/presentation/view_model/home_screen_cubit.dart';
import 'package:flutter/material.dart';

class HeaderCharts extends StatelessWidget {
  const HeaderCharts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.grey100,
      height: AppSize.s60,
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p12),
        child: Row(
          children: [
            Text(
              'المبيعات',
              style: getBoldStyle(color: ColorManager.black),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: ColorManager.white,
              ),
              child: TextButton.icon(
                onPressed: () {
                  HomeScreenCubit.get(context).chartHomeScreenChangeIndex(0);
                  print('000000000000000000');
                },
                icon: Icon(
                  Icons.bar_chart,
                  color: ColorManager.black,
                ),
                label: Text(
                  "الفواتير",
                  style: getBoldStyle(color: ColorManager.black),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                HomeScreenCubit.get(context).chartHomeScreenChangeIndex(1);
                print('2222222222222');

              },
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.white,
                ),
                child: TextButton.icon(
                  onPressed: () {
                    HomeScreenCubit.get(context).chartHomeScreenChangeIndex(1);
                    print('333333333333333333');

                  },
                  icon: Icon(
                    Icons.multiline_chart,
                    color: ColorManager.black,
                  ),
                  label: Text(
                    "الربح والخساره",
                    style: getBoldStyle(color: ColorManager.black),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorManager.white,
              ),
              child: TextButton.icon(
                onPressed: () {
                  HomeScreenCubit.get(context).chartHomeScreenChangeIndex(2);

                },
                icon: Icon(
                  Icons.event_note_sharp,
                  color: ColorManager.black,
                ),
                label: Text(
                  "احدث الفواتير",
                  style: getBoldStyle(color: ColorManager.black),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorManager.white,
              ),
              child: TextButton.icon(
                onPressed: () {
                  HomeScreenCubit.get(context).chartHomeScreenChangeIndex(3);

                },
                icon: Icon(
                  Icons.battery_alert_sharp,
                  color: ColorManager.black,
                ),
                label: Text(
                  "فواتير متأخره عن الدفع",
                  style: getBoldStyle(color: ColorManager.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
