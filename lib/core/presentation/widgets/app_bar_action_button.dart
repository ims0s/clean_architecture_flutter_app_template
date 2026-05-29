import 'package:app_template/core/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class AppBarActionButton extends StatelessWidget {
  final IconData icon;
  final Function()? onTap;
  const AppBarActionButton({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => Navigator.of(context).pop(),
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: context.customColors.surface,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(icon, color: context.customColors.primary, size: 24),
        ),
      ),
    );
  }
}
