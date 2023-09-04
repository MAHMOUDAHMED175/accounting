import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/charts_widget/content_charts/new_invoice_widgets/item_invoice_list_iew.dart';
import 'package:flutter/material.dart';

class NewInvoice extends StatelessWidget {
  const NewInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ItemInvoiceListView();
        },
        separatorBuilder: (context, index) {
          return Divider(
             color: ColorManager.grey,
            thickness: 0.3,
          );
        },
        itemCount: 10);
  }
}
