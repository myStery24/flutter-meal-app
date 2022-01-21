import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';

/// Custom category card
class CategoryItem extends StatelessWidget {
  /// Variables
  final String id;
  final String title;
  final Color color;

  /// Constructor
  const CategoryItem(
      {Key? key, required this.id, required this.title, required this.color})
      : super(key: key);

  /// Function that controls the navigation to another screen
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/categories-meals', arguments: {
      'id': id,
      'title': title,
    });

    // Navigator.of(ctx).push(MaterialPageRoute(
    //     builder: (_) => CategoryMealsScreen(id, title))); // Pass the id and title
  }

  @override
  Widget build(BuildContext context) {
    /// GestureDetector or InkWell for interaction with each card
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15.0),
      onTap: () {
        // print('TAP');
        selectCategory(context);
      },
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          title,

          /// Apply text theme from main.dart
          style: Theme.of(context).textTheme.headline1,
        ),
        // color: color,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
