import 'package:flutter/material.dart';

class CustomIconHoverButton extends StatefulWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const CustomIconHoverButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  State<CustomIconHoverButton> createState() => _CustomIconHoverButtonState();
}

class _CustomIconHoverButtonState extends State<CustomIconHoverButton> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hovered = true),
      onExit: (_) => setState(() => hovered = false),
      child: TextButton.icon(
        onPressed: widget.onTap,
        label: Text(
          widget.label,
          style: TextStyle(color: hovered ? Color(0xff4E3EE6) : Colors.white),
        ),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.black),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
          side: WidgetStatePropertyAll(
            BorderSide(color: hovered ? Color(0xff4E3EE6) : Colors.white),
          ),
        ),
        icon: Icon(
          widget.icon,
          color: hovered ? Color(0xff4E3EE6) : Colors.white,
        ),
      ),
    );
  }
}
