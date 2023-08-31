import 'package:flutter/material.dart';

class StepSideMenu {
  StepSideMenu(this.title,this.icon,[ this.isExpanded = false]);

  String title;
  IconData icon;
  bool isExpanded;
}