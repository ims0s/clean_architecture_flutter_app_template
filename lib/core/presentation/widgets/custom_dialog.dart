import 'package:app_template/core/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final Widget? icon;
  final String message;
  final List<Widget> buttons;
  final List<Widget>? otherWidgets;
  const CustomDialog({
    super.key,
    required this.title,
    required this.message,
    required this.buttons,
    this.otherWidgets,
    this.icon,
  });

  Widget _buildBottomActionBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.customColors.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 8,
        children: buttons.map((button) => Expanded(child: button)).toList(),
      ),
    );
  }

  _buildIcon(BuildContext context) {
    if (icon != null) {
      return icon!;
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.customColors;
    return Dialog(
      backgroundColor: colors.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: colors.textPrimary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            // Using a success icon as placeholder for the Lottie animation from design
            _buildIcon(context),
            const SizedBox(height: 8),
            Text(
              message,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: colors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            if (otherWidgets != null && otherWidgets!.isNotEmpty)
              Column(children: [const SizedBox(height: 8), ...otherWidgets!]),
            const SizedBox(height: 8),
            _buildBottomActionBar(context),
          ],
        ),
      ),
    );
  }
}
