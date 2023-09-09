import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class RestaurantTables extends StatelessWidget {
  const RestaurantTables({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.primary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppPadding.p50),
          topRight: Radius.circular(AppPadding.p50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p28),
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('الدور الاول'),
                ),
                Expanded(
                    child: Container(
                  color: ColorManager.grey,
                  width: double.infinity,
                  height: 0.5,
                )),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(AppPadding.p12),
                  ),
                  child: const Center(child: Text('A1')),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('الدور الثانى'),
                ),
                Expanded(
                    child: Container(
                  color: ColorManager.grey,
                  width: double.infinity,
                  height: 0.5,
                )),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(AppPadding.p12),
                  ),
                  child: const Center(child: Text('B1')),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('الدور الثالث'),
                ),
                Expanded(
                    child: Container(
                  color: ColorManager.grey,
                  width: double.infinity,
                  height: 0.5,
                )),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(AppPadding.p12),
                  ),
                  child: const Center(child: Text('D1')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: ColorManager.green,
                      borderRadius: BorderRadius.circular(AppPadding.p12),
                    ),
                    child: const Center(child: Text('D2')),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(AppPadding.p12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        decoration:  BoxDecoration(
                          color: Color(0xffFF0000).withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(AppPadding.p12),
                            topRight:Radius.circular(AppPadding.p12),
                          ),
                        ),
                        height: 20,
                        width: double.infinity,
                        child: const Center(
                          child: Text(
                            '28 m',
                            style: TextStyle(color: Colors.red,fontSize: 10),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                            borderRadius: const BorderRadius.only(
                                bottomRight:Radius.circular(AppPadding.p12),
                                bottomLeft:Radius.circular(AppPadding.p12),
                            ),
                          ),    child: const Center(
                            child: Text(
                              'D3',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
