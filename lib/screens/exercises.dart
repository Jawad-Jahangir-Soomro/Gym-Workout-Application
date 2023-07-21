import 'package:flutter/material.dart';
import 'package:gym_workout_app/screens/exercise_detials.dart';
import 'package:gym_workout_app/widgets/exercise_item.dart';

import '../models/exercise.dart';

class ExercisesScreen extends StatelessWidget {
  const ExercisesScreen({
    Key? key,
    this.title,
    required this.exercises,
    required this.onToggleFavorite,
  }) : super(key: key);

  final String? title;
  final List<Exercise> exercises;
  final void Function(Exercise exercise) onToggleFavorite;

  void selectExercise(BuildContext context, Exercise exercise) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ExerciseDetailsScreen(
          exercise: exercise,
          onToggleFavorite: onToggleFavorite,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: exercises.length,
      itemBuilder: (ctx, index) => ExerciseItem(
          exercise: exercises[index],
          onSelectExercise: (exercise) {
            selectExercise(context, exercise);
          }),
    );

    if (exercises.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Uh Oh .... Nothing here!",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              "Try Selecting a Different Category!",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            )
          ],
        ),
      );
    }

    if (title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
