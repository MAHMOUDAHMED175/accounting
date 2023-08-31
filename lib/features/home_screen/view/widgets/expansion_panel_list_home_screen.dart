import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/home_screen/data/step_side_menu.dart';
import 'package:accounting/features/home_screen/view/widgets/item_expansion_panel.dart';
import 'package:flutter/material.dart';

class ExpansionPanelListHomeScreen extends StatefulWidget {
  const ExpansionPanelListHomeScreen({Key? key}) : super(key: key);

  @override
  _ExpansionPanelListHomeScreenState createState() =>
      _ExpansionPanelListHomeScreenState();
}

class _ExpansionPanelListHomeScreenState extends State<ExpansionPanelListHomeScreen> {
  final List<StepSideMenu> _steps = getSteps();
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: 9,

      // تعديل ارتفاع اللوحة
      expandedHeaderPadding: EdgeInsets.all(AppPadding.p0),
      expandIconColor: ColorManager.black,
      animationDuration: Duration(seconds: 1),
      materialGapSize: 0,
      dividerColor: ColorManager.grey400,

      // تعديل الهامش العلوي للوحة الممتدة
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _steps[index].isExpanded = isExpanded;
        });
      },
      children: _steps.map<ExpansionPanel>((StepSideMenu step) {
        return ExpansionPanel(
          backgroundColor: ColorManager.grey200,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: Row(
                children: [
                  Icon(step.icon),
                  SizedBox(
                    width: AppSize.s12,
                  ),
                  Text(step.title),
                ],
              ),
            );
          },
          body: itemsHeaderExpansionPanelList(step.title),
          isExpanded: step.isExpanded,
        );
      }).toList(),
    );
  }
}

List<StepSideMenu> getSteps() {
  return [
    StepSideMenu(
      'لوحة التحكم',
      Icons.home,
    ),
    StepSideMenu("الحسابات", Icons.payments_outlined),
    StepSideMenu("ادارة المخزون", Icons.indeterminate_check_box_rounded),
    StepSideMenu("المبيعات", Icons.event_note),
    StepSideMenu("المشتريات", Icons.car_crash_outlined),
    StepSideMenu("الانتاج", Icons.production_quantity_limits),
    StepSideMenu("الموارد البشريه", Icons.h_mobiledata_rounded),
    StepSideMenu("CRM", Icons.chrome_reader_mode_outlined),
    StepSideMenu("المتجر الالكترونى", Icons.add_business_sharp),
    StepSideMenu("الاعدادات", Icons.settings),
  ];
}
