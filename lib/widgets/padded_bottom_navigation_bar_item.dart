import 'package:flutter/material.dart';

class PaddedBottomNavigationBarItem extends BottomNavigationBarItem {
  PaddedBottomNavigationBarItem({required Icon icon, required String label})
      : super(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: icon,
          ),
          label: label,
        );
}
