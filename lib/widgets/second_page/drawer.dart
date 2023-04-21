import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget _buildMenuItem(
    BuildContext context, Widget title, String routeName, String currentRoute) {
  final isSelected = routeName == currentRoute;

  return ListTile(
    title: title,
    selected: isSelected,
    onTap: () {
      if (isSelected) {
        Get.back();
      } else {
        Get.toNamed(routeName);
      }
    },
  );
}

Drawer buildDrawer(BuildContext context, String currentRoute) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        const DrawerHeader(
          child: Center(
            child: Text('مندوب مبيعات'),
          ),
        ),
        _buildMenuItem(
          context,
          const Text('تسجيل البيانات'),
          "/sign-up",
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('الخريطة'),
          "/map-page",
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text(' الطلبات'),
          "/orders-page",
          currentRoute,
        ),
      ],
    ),
  );
}
