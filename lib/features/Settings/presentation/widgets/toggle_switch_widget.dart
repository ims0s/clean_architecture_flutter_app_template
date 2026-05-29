import 'package:flutter/material.dart';
import 'package:app_template/core/resources/theme_manager.dart';

class ToggleSwitchWidget extends StatelessWidget {
  final bool isActive;
  final ValueChanged<bool> onChanged;

  const ToggleSwitchWidget({
    Key? key,
    required this.isActive,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!isActive),
      child: Container(
        width: 64,
        height: 24,
        decoration: BoxDecoration(
          color: isActive ? context.customColors.iconsActive : context.customColors.iconsInactive,
          borderRadius: BorderRadius.circular(12),
        ),
        child: AnimatedAlign(
          alignment: isActive ? Alignment.centerRight : Alignment.centerLeft,
          duration: const Duration(milliseconds: 200),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: context.customColors.surface,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
