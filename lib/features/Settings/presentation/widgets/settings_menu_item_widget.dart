import 'package:flutter/material.dart';
import 'package:app_template/core/resources/theme_manager.dart';

class SettingsMenuItemWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool showArrow;
  final Widget? trailing;

  const SettingsMenuItemWidget({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.showArrow = true,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              // Icon
              Icon(icon, size: 24, color: context.customColors.iconsInactive),
              const SizedBox(width: 8),
              // Label
              Expanded(
                child: Text(
                  label,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: context.customColors.textPrimary,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
              // Trailing Widget or Arrow
              trailing ??
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 24,
                    color: context.customColors.iconsActive,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
