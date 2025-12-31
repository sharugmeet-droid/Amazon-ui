import 'package:flutter/material.dart';

class AmazonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AmazonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF232F3E),
      title: TextField(
        decoration: InputDecoration(
          hintText: 'Search Amazon',
          filled: true,
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      actions: const [
        Icon(Icons.shopping_cart),
        SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}