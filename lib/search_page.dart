import 'package:flutter/material.dart';
import 'package:new_fomappi/utils/list.dart';
import 'package:new_fomappi/utils/searchbar/searchbar.dart';
import 'data/foods.dart';


class SearchFoodPage extends StatefulWidget {
  const SearchFoodPage({super.key});

  @override
  State<SearchFoodPage> createState() => _SearchFoodPageState();
}

class _SearchFoodPageState extends State<SearchFoodPage> {

  final FoodList _foodList = FoodList();

  void _handleSearch(String query) {
    setState(() {
      _foodList.filterFoods(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75.0,
        title: searchBar(context, _handleSearch)
      ),
      body: buildList(context, _foodList)
    );
  }
}



