import 'package:accounting/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';

Widget imageItemGridViewMenu({
  height,
}) =>
    Image.asset(
      ImageAssets.pitza,
      height: height,
      fit: BoxFit.contain,
    );
