import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductInputField extends StatefulWidget {
  final String label;
  final String? initialValue;
  final IconData? prefixIcon;
  final String? errorText;
  final String? helperText;
  final bool isNumeric;
  final int? maxLines;
  final bool enabled;
  final Function(String) onChanged;
  final String? Function(String?)? validator;

  const ProductInputField({
    super.key,
    required this.label,
    required this.onChanged,
    this.initialValue,
    this.prefixIcon,
    this.errorText,
    this.helperText,
    this.isNumeric = false,
    this.maxLines = 1,
    this.enabled = true,
    this.validator,
  });

  @override
  State<ProductInputField> createState() => _ProductInputFieldState();
}

class _ProductInputFieldState extends State<ProductInputField> {
  late final TextEditingController _controller;
  final _border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
  );

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue ?? '');
  }

  @override
  void didUpdateWidget(ProductInputField oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Update controller if initial value changes externally
    if (widget.initialValue != oldWidget.initialValue && 
        widget.initialValue != _controller.text) {
      _controller.text = widget.initialValue ?? '';
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    
    return TextFormField(
      controller: _controller,
      enabled: widget.enabled,
      maxLines: widget.maxLines,
      keyboardType: widget.isNumeric 
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      inputFormatters: widget.isNumeric
          ? [
              FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
            ]
          : null,
      onChanged: widget.onChanged,
      validator: widget.validator,
      decoration: InputDecoration(
        enabledBorder: _border,
        focusedBorder: _border.copyWith(
          borderSide: BorderSide(color: colors.primary, width: 2),
        ),
        disabledBorder: _border.copyWith(
          borderSide: BorderSide(color: colors.outline.withValues(alpha: 0.5)),
        ),
        errorBorder: _border.copyWith(
          borderSide: BorderSide(color: colors.error),
        ),
        focusedErrorBorder: _border.copyWith(
          borderSide: BorderSide(color: colors.error, width: 2),
        ),
        isDense: true,
        labelText: widget.label,
        prefixIcon: widget.prefixIcon != null 
            ? Icon(widget.prefixIcon)
            : null,
        errorText: widget.errorText,
        errorMaxLines: 2,
        helperText: widget.helperText,
        helperMaxLines: 2,
        helperStyle: TextStyle(
          color: Colors.grey[600],
          fontSize: 12,
        ),
        focusColor: colors.primary,
      ),
    );
  }
}
