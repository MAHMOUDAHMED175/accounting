


import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/home_screen/presentation/view_model/home_screen_cubit.dart';
import 'package:flutter/material.dart';

class HeaderLosing extends StatelessWidget {
  const HeaderLosing({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppPadding.p8),
      child: Row(children: [
        Text("تقرير الربح والخساره للسنه الماضيه",style: getBoldStyle(color: ColorManager.black,fontSize: FontSize.s18),),
        SizedBox(
          width: AppSize.s4,
        ),
        Container(
          decoration: BoxDecoration(
            color: ColorManager.blue,
          ),
          child: TextButton.icon(
            onPressed: () {},
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
        Spacer(),
        InkWell(
            onTap: (){
              HomeScreenCubit.get(context).lightChange();
              HomeScreenCubit.get(context).losingChangeIndex(1);

            },
            hoverColor: ColorManager.white,
            child: Container(
              decoration: BoxDecoration(
                color:HomeScreenCubit.get(context).light? ColorManager.blue200:ColorManager.white,
                  borderRadius: BorderRadius.circular(5)
              ),
              child:Padding(
                padding: const EdgeInsets.all(AppPadding.p8),
                child: Text('مستحق',style: getBoldStyle(color: ColorManager.black),),
              ) ,
            )),
        InkWell(
            onTap: (){
              HomeScreenCubit.get(context).lightChange();
              HomeScreenCubit.get(context).losingChangeIndex(0);
            },
            hoverColor: ColorManager.white,
            child: Container(
              decoration: BoxDecoration(
                color: HomeScreenCubit.get(context).light? ColorManager.white:ColorManager.blue200,
                  borderRadius: BorderRadius.circular(5)
              ),
              child:Padding(
                padding: const EdgeInsets.all(AppPadding.p8),
                child: Text('نقدي',style: getBoldStyle(color: ColorManager.black),),
              ) ,
            ))

      ]),
    );
  }
}
