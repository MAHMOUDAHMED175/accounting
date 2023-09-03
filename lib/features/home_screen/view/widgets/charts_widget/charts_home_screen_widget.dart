import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/features/home_screen/view/widgets/charts_widget/header_charts.dart';
import 'package:accounting/features/home_screen/view_model/home_screen_cubit.dart';
import 'package:accounting/features/home_screen/view_model/home_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChartsHomeScreen extends StatelessWidget {
  const ChartsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        color: ColorManager.white,
        height: 650,
        child: Column(
          children: [
            const HeaderCharts(),

            Row(
              children: [
                const Text("الفواتير من 29/09/2024 الى 29/10/2024"),
                Container(
                  decoration: BoxDecoration(
                    color: ColorManager.blue,
                  ),
                  child: TextButton.icon(
                    onPressed: () {

                    },
                    icon: Icon(
                      Icons.settings,
                      color: ColorManager.black,
                    ),
                    label: Text(
                     "التفاصيل",
                      style: getBoldStyle(color: ColorManager.black),
                    ),
                  ),
                ),
              ]
            ),
              Expanded(child: ChartsContent()),
          ],
        ),
      ),
    );
  }
}

class ChartsContent extends StatelessWidget {
  const ChartsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeScreenCubit, HomeScreenState>(
  listener: (context, state) {
  },
  builder: (context, state) {
    return Scaffold(
      body: HomeScreenCubit.get(context).chartHomeScreenScreens[
          HomeScreenCubit.get(context).chartHomeScreenCurrentIndex],
    );
  },
);
  }
}
