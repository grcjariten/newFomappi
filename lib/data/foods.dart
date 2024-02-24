import 'package:new_fomappi/utils/objects.dart';


class FoodList {
  List<Food> allFoods = const [
    Food(id: 1, name: 'Apple', fodmap:false, category: 'fruit'),
    Food(id: 2, name: 'Banana', fodmap:false, category: 'fruit'),
    Food(id: 3, name: 'Pear', fodmap:false, category: 'fruit'),
    Food(id: 4, name: 'Pineapple', fodmap:true, category: 'fruit'),
    Food(id: 5, name: 'Kiwi', fodmap:true, category: 'fruit'),
    Food(id: 6, name: 'Orange', fodmap:true, category: 'fruit'),
  ];
  
  List<Food> filteredFoods = [];
  
  FoodList() {
    filteredFoods = allFoods;
  }
  
  void filterFoods(String query) {
    if (query.isNotEmpty) {
      filteredFoods = allFoods.where((food) => food.name.toLowerCase().contains(query.toLowerCase())).toList();
    } else {
      filteredFoods = allFoods;
    }
  }
  
}