





import 'package:accounting/core/utils/color_manager.dart';
import 'package:flutter/material.dart';

class AccountsGridViewComponent extends StatelessWidget {
  const AccountsGridViewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: ColorManager.gridViewIconColor,
      child:Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.camera)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.camera)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.camera)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.camera)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.camera)),
          ),
        ],
      ) ,
    );
  }
}
