import 'package:flutter/material.dart';

class CustomTapWidget extends StatelessWidget {
  const CustomTapWidget(
      {super.key,
      required int selectedIndex,
      required this.childOfCustomTapIcon,
      required this.activeColor,
      required this.inactiveColor})
      : _selectedIndex = selectedIndex;

  final int _selectedIndex;
  final Widget childOfCustomTapIcon;
  final Color activeColor;
  final Color inactiveColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: _selectedIndex == 0
              ? Colors.transparent
              : const Color(0xff273526),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
        color: _selectedIndex == 0 ? inactiveColor : activeColor,
      ),
      child: childOfCustomTapIcon,
    );
  }
}
