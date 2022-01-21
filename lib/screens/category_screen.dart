import 'package:flutter/material.dart';
import 'package:meal_app/components/category_item.dart';
import 'package:meal_app/repository/dummy_category_data.dart';

/// Main screen
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deli Meal'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        /// View model
        child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),

          /// Map the Grid with the data from repository
          children: dummyCategories
              .map((catData) => CategoryItem(
                    id: catData.id,
                    title: catData.title,
                    color: catData.color,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
