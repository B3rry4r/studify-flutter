import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String? value;
  final List<String> items;
  final String hint;
  final ValueChanged<String?> onChanged;

  const CustomDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.hint,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(40),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          hint: Text(
            hint,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w100,
            ),
          ),
          onChanged: onChanged,
          items: items.map((String role) {
            return DropdownMenuItem<String>(
              value: role,
              child: Text(
                role,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
              ),
            );
          }).toList(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          dropdownColor: Colors.black.withOpacity(0.7),
          icon: const Icon(Icons.keyboard_arrow_down_rounded,
              color: Colors.white),
          isExpanded: true,
        ),
      ),
    );
  }
}
