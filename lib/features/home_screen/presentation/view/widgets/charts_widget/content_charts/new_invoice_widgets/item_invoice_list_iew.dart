import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/font_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class ItemInvoiceListView extends StatefulWidget {
  ItemInvoiceListView({super.key});

  @override
  State<ItemInvoiceListView> createState() => _ItemInvoiceListViewState();
}

class _ItemInvoiceListViewState extends State<ItemInvoiceListView> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        hoverColor: ColorManager.green,
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('04/09/2023-#0000005'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          hoverColor: ColorManager.blue,
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                'شركة رمال السواحل للمقاولات',
                                style: getBoldStyle(
                                    color: ColorManager.black,
                                    fontSize: FontSize.s18),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                "شركة رمال السواحل للمقاولات 000001#",
                                style: getLightStyle(
                                    color: ColorManager.grey,
                                    fontSize: FontSize.s14),
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: AppSize.s8,
                      ),
                      Text(
                        "الرياض",
                        style: getLightStyle(
                            color: ColorManager.grey, fontSize: FontSize.s14),
                      ),
                      const SizedBox(
                        height: AppSize.s4,
                      ),
                      Text(
                        "Saudi Arabia",
                        style: getLightStyle(
                            color: ColorManager.grey, fontSize: FontSize.s14),
                      ),
                      const SizedBox(
                        height: AppSize.s4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.person),
                          Text(
                            "بواسطة: ",
                            style: getLightStyle(
                                color: ColorManager.grey,
                                fontSize: FontSize.s14),
                          ),
                          Text(
                            "المستخدم الحالى",
                            style: getLightStyle(
                                color: ColorManager.grey,
                                fontSize: FontSize.s14),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),

                  Column(
                    children: [
                      Text(
                        "152.21 ر.س",
                        style: getBoldStyle(
                            color: ColorManager.black,
                            fontSize: FontSize.s18),
                      ),
                      Container(
                        color: ColorManager.red,
                        child: Padding(
                          padding: const EdgeInsets.all(AppPadding.p4),
                          child: Text('غير مدفوعة',style: getLightStyle(color: ColorManager.white),),
                        ),
                      ),
                    ],
                  ),
const SizedBox(
  width: AppSize.s40,
),
                  PopupMenuButton<String>(
                    child: Container(
                      width: 40,
                      height: 40,
                      color: ColorManager.blue200,
                      child: const Icon(Icons.more_horiz),
                    ),
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry<String>>[
                        PopupMenuItem<String>(
                          value: 'Item 1',
                          child: ListTile(
                            leading: Icon(
                              Icons.visibility,
                              color: ColorManager.green,
                            ),
                            title: const Text('عرض'),
                          ),
                        ),
                      ];
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
