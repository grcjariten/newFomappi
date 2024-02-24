import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data/foods.dart';
import 'objects.dart';

Widget buildList(BuildContext context, FoodList foodList) {


  return ListView.builder(
    itemCount: foodList.filteredFoods.length, // Number of items in your list
    itemBuilder: (context, index) {
      // Build each ListTile using the corresponding Food object at the index
      final Food food = foodList.filteredFoods[index];
      return ListTile(
        leading: Text(food.id.toString()),
        title: Text(food.name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(food.category),
        trailing: Icon(
          food.fodmap ? FontAwesomeIcons.thumbsDown: FontAwesomeIcons.leaf,
          color: food.fodmap ? Colors.red : Colors.lightGreen,
        ),
      );
    },
  );
}