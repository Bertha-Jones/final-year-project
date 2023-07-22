import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final String hintText;
  final void Function(String) onSearch;

  const MySearchBar({
    super.key,
    required this.hintText,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(color: const Color.fromARGB(255, 229, 229, 229)),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          fillColor: Colors.white,
          suffixIcon: const Icon(
            Icons.search,
            color: Color.fromARGB(255, 195, 195, 195),
            size: 28,
          ),
          hintStyle: TextStyle(
              color: const Color.fromARGB(255, 120, 119, 119).withOpacity(0.5)),
        ),
        onSubmitted: onSearch,
      ),
    );
  }
}
