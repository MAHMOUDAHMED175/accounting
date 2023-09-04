import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/responsive.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/charts_widget/content_charts/invoice_widgets/circle_invoice_management.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/charts_widget/content_charts/invoice_widgets/spline_line_invoice_management.dart';
import 'package:flutter/material.dart';
class LosingMoney extends StatelessWidget {
   LosingMoney({super.key});

   bool foundData = false;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Stack(alignment: Alignment.center, children: [
         Responsive.isDesktop(context)
             ? Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             SizedBox(
               height: Responsive.isMobile(context) &&
                   Responsive.isTablet(context)
                   ? 300
                   : 400,
               width: Responsive.isMobile(context) &&
                   Responsive.isTablet(context)
                   ? 500
                   : 700,
               child: Stack(alignment: Alignment.center, children: [
                 SplineArea(),
                 foundData
                     ? Container()
                     : Text(
                   'لا توجد بيانات متاحه',
                   style: getBoldStyle(
                       color: ColorManager.black,
                       fontSize: FontSize.s20),
                 ),
               ]),
             ),
             SizedBox(
               height: Responsive.isMobile(context) &&
                   Responsive.isTablet(context)
                   ? 200
                   : 300,
               width: Responsive.isMobile(context) &&
                   Responsive.isTablet(context)
                   ? 300
                   : 400,
               child: Stack(alignment: Alignment.center, children: [
                 DoughnutDefault(),
                 foundData
                     ? Container()
                     : Text(
                   'لا توجد بيانات متاحه',
                   style: getBoldStyle(
                       color: ColorManager.black, fontSize: FontSize.s20),
                 ),
               ]),
             ),
           ],
         )
             : Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             SizedBox(
               height: Responsive.isMobile(context) &&
                   Responsive.isTablet(context)
                   ? 300
                   : 400,
               width: Responsive.isMobile(context) &&
                   Responsive.isTablet(context)
                   ? 500
                   : 600,
               child: Stack(alignment: Alignment.center, children: [
                 SplineArea(),
                 foundData
                     ? Container()
                     : Text(
                   'لا توجد بيانات متاحه',
                   style: getBoldStyle(
                       color: ColorManager.black, fontSize: FontSize.s20),
                 ),
               ]),
             ),
             SizedBox(
               height: Responsive.isMobile(context) &&
                   Responsive.isTablet(context)
                   ? 200
                   : 300,
               width: Responsive.isMobile(context) &&
                   Responsive.isTablet(context)
                   ? 300
                   : 400,
               child: Stack(alignment: Alignment.center, children: [
                 DoughnutDefault(),
                 foundData
                     ? Container()
                     :  Text(
                   'لا توجد بيانات متاحه',
                   style: getBoldStyle(
                       color: ColorManager.black, fontSize: FontSize.s20),
                 ),
               ]),
             ),
           ],
         ),
         Container(
           color: foundData ? null : Colors.grey.withOpacity(0.4),
         ),

         // Padding(
         //   padding: const EdgeInsets.all(20.0),
         //   child: Row(
         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
         //     children: [
         //       Text('لا توجد بيانات متاحه',style: getBoldStyle(color: ColorManager.black,fontSize: FontSize.s20),),
         //     ],
         //   ),
         // ),
       ]),
     );
   }
}
