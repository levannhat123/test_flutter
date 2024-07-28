import 'package:flutter/material.dart';

class Search_Box extends StatelessWidget {
  const Search_Box({
    super.key,
    this.controller,
  });
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.black),
        decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Search Store',
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
