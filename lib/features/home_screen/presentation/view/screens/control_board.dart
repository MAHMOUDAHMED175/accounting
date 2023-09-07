import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/charts_widget/charts_home_screen_widget.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/grid_view_widgets/grid_view_widgets.dart';
import 'package:flutter/material.dart';

class ControlBoardScreen extends StatelessWidget {
  const ControlBoardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: ColorManager.grey200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40,right: 40.0),
              child: Text('02/09/2023',style: getMediumStyle(fontSize: FontSize.s18,color: ColorManager.grey400),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Text('اهلا و مرحبا بك , اخترت صح',style: getBoldStyle(color: ColorManager.black,fontSize: FontSize.s30),),
            ),
            const SizedBox(
                height: AppSize.s650,
                child: GridViewWidget()),
            const ChartsHomeScreen(),
          ],
        ),
      ),
    );
  }
}