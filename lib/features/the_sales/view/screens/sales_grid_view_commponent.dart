





import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/the_sales/view/widgets/grid_view_sales_widgets/grid_view_sales.dart';
import 'package:flutter/material.dart';

class SalesGridViewComponent extends StatelessWidget {
  const SalesGridViewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(AppPadding.p28),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: AppSize.s500,
                child: GridViewWidgetSales())
          ],
        ),
      ),
    );
  }
}
