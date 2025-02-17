import 'package:flutter/material.dart';

class ResponsiveDropdownButton extends StatefulWidget {
  final List<DropdownMenuItem<dynamic>> items;
  final ValueChanged<dynamic> onChanged;
  final dynamic value;
  final String hint;

  const ResponsiveDropdownButton({
    super.key,
    required this.items,
    required this.onChanged,
    required this.value,
    required this.hint,
  });

  @override
  State<ResponsiveDropdownButton> createState() =>
      _ResponsiveDropdownButtonState();
}

class _ResponsiveDropdownButtonState extends State<ResponsiveDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Phone breakpoint
          return DropdownButton<dynamic>(
            value: widget.value,
            onChanged: widget.onChanged,
            items: widget.items,
            hint: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                widget.hint,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ),
          );
        } else {
          // Tablet/Desktop breakpoint
          return Expanded(
            child: DropdownButton<dynamic>(
              value: widget.value,
              onChanged: widget.onChanged,
              items: widget.items,
              hint: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  widget.hint,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
