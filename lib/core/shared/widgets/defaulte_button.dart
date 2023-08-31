import 'package:flutter/material.dart';

import '../../utils/color_manager.dart';
import '../../utils/styles_manager.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final double? width;
  final Color color;
  const DefaultButton({
    super.key,
    required this.text,
    required this.onPress,
    this.width,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: onPress,
        child: Text(
          text,
          style: getLightStyle(color: ColorManager.white),
        ),
      ),
    );
  }
}
