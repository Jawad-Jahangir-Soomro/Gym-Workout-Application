import 'package:flutter/material.dart';
import 'package:gym_workout_app/models/exercise.dart';
import 'package:gym_workout_app/widgets/exercise_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';

class ExerciseItem extends StatelessWidget {
  const ExerciseItem(
      {Key? key, required this.exercise, required this.onSelectExercise})
      : super(key: key);

  final Exercise exercise;
  final void Function(Exercise exercise) onSelectExercise;

  String get complexityTest {
    return exercise.complexity.name[0].toUpperCase() +
        exercise.complexity.name.substring(1);
  }

  String get affordabilityTest {
    return exercise.affordability.name[0].toUpperCase() +
        exercise.affordability.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {
          onSelectExercise(exercise);
        },
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(
                exercise.imageUrl,
              ),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                child: Column(
                  children: [
                    Text(
                      exercise.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ExerciseItemTrait(
                          label: "${exercise.repetition}",
                          icon: Icons.repeat,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        ExerciseItemTrait(
                          icon: Icons.work,
                          label: complexityTest,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        ExerciseItemTrait(
                          icon: Icons.attach_money,
                          label: affordabilityTest,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
