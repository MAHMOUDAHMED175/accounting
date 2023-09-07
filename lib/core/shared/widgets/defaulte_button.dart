import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

import '../../utils/color_manager.dart';
import '../../utils/styles_manager.dart';

class DefaultButton extends StatelessWidget {
  final Widget widget;
  final VoidCallback onPress;
  final double? height;
  final Color color;
  const DefaultButton({
    super.key,
    required this.widget,
    required this.onPress,
    this.height,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(),
      color: color,
      onPressed: onPress,
      child: widget,
      height: AppSize.s50,
      elevation: 4,


    );
  }
}
