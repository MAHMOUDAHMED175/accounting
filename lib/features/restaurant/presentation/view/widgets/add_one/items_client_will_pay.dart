import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:accounting/features/restaurant/presentation/view/widgets/add_one/item_List_view_client_will_pay.dart';
import 'package:flutter/material.dart';

class ItemsClientWillPay extends StatelessWidget {
  const ItemsClientWillPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Stack(alignment: Alignment.center, children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: ColorManager.blue,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      height: 3,
                      width: 3,
                      decoration: BoxDecoration(
                          color: ColorManager.white,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ]),
                  Container(
                    color: ColorManager.grey,
                    width: 0.5,
                    height: 15,
                  ),
                  Stack(alignment: Alignment.center, children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: ColorManager.blue,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      height: 3,
                      width: 3,
                      decoration: BoxDecoration(
                          color: ColorManager.white,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ]),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('رقم الطلب  . 214sd54f624518'),
                    SizedBox(
                      height: AppSize.s8,
                    ),
                    Text('Table 118 . floot 2'),
                  ],
                ),
              ),
            ],
          ),
          const Divider(),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ItemListViewClientWillPay();
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: 5),
          ),
        ],
      ),
    );
  }
}
