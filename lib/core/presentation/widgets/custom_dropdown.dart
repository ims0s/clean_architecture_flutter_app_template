import 'package:app_template/core/resources/theme_manager.dart';
import 'package:flutter/material.dart';

/// A dynamic dropdown widget that can handle both objects and primitive types
///
/// For objects: use displayExpr and valueExpr to specify which properties to use
/// For primitives (String, int, etc.): the value itself is used for both display and value
class CustomDropdown<T, V> extends StatelessWidget {
  /// List of items to display in dropdown
  final List<T> items;

  /// Currently selected value
  final V? value;

  /// Callback when value changes
  final ValueChanged<V?>? onChanged;

  /// Function to extract display text from item
  /// For objects: e.g., (item) => item.name
  /// For primitives: defaults to item.toString()
  final String Function(T item)? displayExpr;

  /// Function to extract value from item
  /// For objects: e.g., (item) => item.id
  /// For primitives: defaults to the item itself
  final V Function(T item)? valueExpr;

  /// Validator for the dropdown
  final String? Function(V?)? validator;

  /// Label text for the dropdown
  final String? label;

  final String? hintText;

  const CustomDropdown({
    super.key,
    required this.items,
    required this.onChanged,
    this.value,
    this.displayExpr,
    this.valueExpr,
    this.label,
    this.hintText,
    this.validator,
  });

  /// Get display text for an item
  String _getDisplayText(T item) {
    if (displayExpr != null) {
      return displayExpr!(item);
    }
    // For primitives, just convert to string
    return item.toString();
  }

  /// Get value for an item
  V _getValue(T item) {
    if (valueExpr != null) {
      return valueExpr!(item);
    }
    // For primitives, the item itself is the value
    return item as V;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            label ?? '',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: context.customColors.textPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        DropdownButtonFormField<V>(
          initialValue: value,
          items: items.map((T item) {
            final itemValue = _getValue(item);
            final displayText = _getDisplayText(item);

            return DropdownMenuItem<V>(
              value: itemValue,
              child: Text(displayText),
            );
          }).toList(),
          onChanged: onChanged,
          validator: validator,
          decoration: _buildDecoration(context),
          isExpanded: true,
        ),
      ],
    );
  }

  InputDecoration _buildDecoration(BuildContext context) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: context.customColors.textSecondary,
        fontSize: 14,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      filled: true,
      fillColor: context.customColors.surface,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: context.customColors.borders, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: context.customColors.borders, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: context.customColors.borders, width: 1),
      ),
    );
  }
}
