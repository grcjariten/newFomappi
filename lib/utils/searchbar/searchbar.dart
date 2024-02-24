import 'package:flutter/material.dart';


SearchBar searchBar(BuildContext context, Function(String) onChanged) {
  return SearchBar(
    onChanged: onChanged,
    hintText: "Search...",
    leading: const Icon(Icons.search),
  );
}

MaterialStateProperty<Color> searchBarColor = MaterialStateProperty.all(
    const Color.fromARGB(255, 238, 228, 182));
