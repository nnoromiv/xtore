import 'package:flutter/material.dart';

class RoundInputField extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundInputField({
    Key? key,
    required this.icon,
    required this.hintText,
    required this.onChanged,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
          icon: Icon(
            icon,
            color: color,
          ),
          hintText: hintText,
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.green[900], fontSize: 16.0)),
    );
  }
}
