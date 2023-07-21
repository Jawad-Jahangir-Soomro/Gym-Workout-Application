import 'package:flutter/material.dart';
import 'package:gym_workout_app/data/dummy_data.dart';
import 'package:gym_workout_app/models/exercise.dart';
import 'package:gym_workout_app/screens/exercises.dart';
import 'package:gym_workout_app/widgets/categoryGridItem.dart';

import '../models/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({
    Key? key,
    required this.onToggleScreen,
    required this.availableExercises,
  }) : super(key: key);

  final void Function(Exercise exercise) onToggleScreen;
  final List<Exercise> availableExercises;

  void _selectCategory(BuildContext context, Category category) {
    final filteredExercises = availableExercises
        .where(
          (meals) => meals.categories.contains(category.id),
        )
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ExercisesScreen(
          exercises: filteredExercises,
          title: category.title,
          onToggleFavorite: onToggleScreen,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 2.2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        for (final category in availableCategories)
          CategoryGridItem(
            category: category,
            onSelectCategory: () {
              _selectCategory(context, category);
            },
          )
      ],
    );
  }
}
