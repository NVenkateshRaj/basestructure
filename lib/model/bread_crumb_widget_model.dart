import 'package:flutter/material.dart';

class BreadCrumbWidgetModel{
  final String title;
  final Widget child;
  bool isSelected;
  BreadCrumbWidgetModel({required this.title, required this.child,required this.isSelected});
}