
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class DropDownMenuCashier extends StatefulWidget {
  const DropDownMenuCashier({super.key});

  @override
  State<DropDownMenuCashier> createState() => _DropDownMenuCashierState();
}

class _DropDownMenuCashierState extends State<DropDownMenuCashier> {
  List<String> options2 = ['الفرع الرئيسى', 'فرع عمان', 'فرع مصر'];

  String? selectedOption2 = 'الفرع الرئيسى';
  @override
  Widget build(BuildContext context) {
    return    Column(
      children: [
        Row(
          children: [

            SizedBox(
              width: AppSize.s250,
              child: Row(
                children: [
                  Container(
                    height: AppSize.s40,
                    decoration: BoxDecoration(
                        color: ColorManager.white,
                        border: Border.all(
                            color: Colors.black,
                            width: 0.2
                        )
                    ),
                    child: const Icon(Icons.person),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: AppSize.s40,
                      decoration: BoxDecoration(
                          color: ColorManager.white,
                          border: Border.all(
                              color: Colors.black,
                              width: 0.2
                          )
                      ),
                      child: DropdownButton(
                        elevation: 8,
                        isExpanded: true,
                        underline: Container(),
                        focusColor: Colors.transparent,
                        padding: const EdgeInsets.all(8),
                        value: selectedOption2,
                        items: options2.map((option2) {
                          return DropdownMenuItem(
                            child: Text(option2),
                            value: option2,
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedOption2 = value.toString();
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: AppSize.s40,
                    decoration: BoxDecoration(
                        color: ColorManager.white,
                        border: Border.all(
                            color: Colors.black,
                            width: 0.2
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.p4),
                      child: Icon(Icons.add_circle,color: ColorManager.blue,),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              width: AppSize.s28,
            ),
            Container(
              height: AppSize.s40,
              decoration: BoxDecoration(
                  color: ColorManager.white,
                  border: Border.all(
                      color: Colors.black,
                      width: 0.2
                  )
              ),
              child: const Padding(
                padding: EdgeInsets.all(AppPadding.p4),
                child: Icon(Icons.search),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: AppSize.s40,
                decoration: BoxDecoration(
                    color: ColorManager.white,
                    border: Border.all(
                        color: Colors.black,
                        width: 0.2
                    )
                ),
                child: Center(child: Text('اسم المنتج',style: getLightStyle(color: ColorManager.grey),)),
              ),
            ),
            Container(
              height: AppSize.s40,
              decoration: BoxDecoration(
                  color: ColorManager.white,
                  border: Border.all(
                      color: Colors.black,
                      width: 0.2
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p4),
                child: Icon(Icons.add_circle,color: ColorManager.blue,),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.s16,
        ),
        Row(
          children: [
            SizedBox(
              width: AppSize.s250,
              child: Container(
                height: AppSize.s40,
                decoration: BoxDecoration(
                    color: ColorManager.white,
                    border: Border.all(
                        color: Colors.black,
                        width: 0.2
                    )
                ),
                child: DropdownButton(
                  elevation: 8,
                  isExpanded: true,
                  underline: Container(),
                  focusColor: Colors.transparent,
                  padding: const EdgeInsets.all(8),
                  value: selectedOption2,
                  items: options2.map((option2) {
                    return DropdownMenuItem(
                      child: Text(option2),
                      value: option2,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedOption2 = value.toString();
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Container(
              height: AppSize.s40,
              decoration: BoxDecoration(
                  color: ColorManager.white,
                  border: Border.all(
                      color: Colors.black,
                      width: 0.2
                  )
              ),
              child: const Padding(
                padding: EdgeInsets.all(AppPadding.p4),
                child: Icon(Icons.money),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                  height: AppSize.s40,
                  decoration: BoxDecoration(
                      color: ColorManager.white,
                      border: Border.all(
                          color: Colors.black,
                          width: 0.2
                      )
                  ),
                  child: DropdownButton(
                    elevation: 8,
                    isExpanded: true,
                    underline: Container(),
                    focusColor: Colors.transparent,
                    padding: const EdgeInsets.all(8),
                    value: selectedOption2,
                    items: options2.map((option2) {
                      return DropdownMenuItem(
                        child: Text(option2),
                        value: option2,
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedOption2 = value.toString();
                      });
                    },
                  )
              ),
            ),
            Container(
              height: AppSize.s40,
              decoration: BoxDecoration(
                  color: ColorManager.white,
                  border: Border.all(
                      color: Colors.black,
                      width: 0.2
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p4),
                child: Icon(Icons.battery_alert,color: ColorManager.orange,),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.s16,
        ),
        Row(
          children: [

            SizedBox(
              width: AppSize.s250,
              child: Row(
                children: [

                  Container(
                    height: AppSize.s40,
                    decoration: BoxDecoration(
                        color: ColorManager.white,
                        border: Border.all(
                            color: Colors.black,
                            width: 0.2
                        )
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(AppPadding.p4),
                      child: Icon(Icons.work),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        height: AppSize.s40,
                        decoration: BoxDecoration(
                            color: ColorManager.white,
                            border: Border.all(
                                color: Colors.black,
                                width: 0.2
                            )
                        ),
                        child: DropdownButton(
                          elevation: 8,
                          isExpanded: true,
                          underline: Container(),
                          focusColor: Colors.transparent,
                          padding: const EdgeInsets.all(8),
                          value: selectedOption2,
                          items: options2.map((option2) {
                            return DropdownMenuItem(
                              child: Text(option2),
                              value: option2,
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedOption2 = value.toString();
                            });
                          },
                        )
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ],
    ) ;
  }
}
