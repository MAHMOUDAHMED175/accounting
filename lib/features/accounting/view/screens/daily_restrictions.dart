import 'package:accounting/core/utils/color_manager.dart';
import 'package:flutter/material.dart';

class DailyRestrictionsScreen extends StatelessWidget {
  const DailyRestrictionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorManager.gridViewIconColor,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.camera)),
            ),
            const Text('ddddd'),
            const Text('ddddd'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.donut_large)),
            ),
          ],
        ),
      ),
    );
  }

  //1+1=3
}
