import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/responsive.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/charts_widget/content_charts/header_charts/header_charts.dart';
import 'package:accounting/features/home_screen/presentation/view_model/home_screen_cubit.dart';
import 'package:flutter/material.dart';

class ChartsHomeScreen extends StatelessWidget {
  const ChartsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        color: ColorManager.white,
        height: Responsive.isDesktop(context)? 600: 900,
        child: Column(
          children: [
            const HeaderCharts(),

            Expanded(
              child: HomeScreenCubit.get(context).chartHomeScreenScreens[
              HomeScreenCubit.get(context).chartHomeScreenCurrentIndex],
            ),


          ],
        ),
      ),
    );
  }
}

