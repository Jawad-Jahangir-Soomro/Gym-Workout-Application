import 'package:flutter/material.dart';
import 'package:gym_workout_app/models/exercise.dart';

class ExerciseDetailsScreen extends StatelessWidget {
  const ExerciseDetailsScreen({Key? key, required this.exercise, required this.onToggleFavorite}) : super(key: key);

  final Exercise exercise;
  final void Function(Exercise exercise) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          exercise.title,
        ),
        actions: [
          IconButton(
            onPressed: (){
              onToggleFavorite(exercise);
            },
            icon: const Icon(Icons.star),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              exercise.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30,),
            Container(
              width: 320,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(50)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Repetition",style:  Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(height: 14,),
                      Text(
                        exercise.repetition.toString(),
                        style:  Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 100,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sets",style:  Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(height: 14,),
                      Text(
                        exercise.sets.toString(),
                        style:  Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Text("Targets",style:  Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold
            ),),

            const SizedBox(height: 14,),
            for(final targets in exercise.targets)
              Text(
                targets,
                style:  Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            const SizedBox(height: 24,),
            Text("Steps",style:  Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold
            ),),
            const SizedBox(height: 14,),
            for(final step in exercise.steps)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  step,
                  textAlign: TextAlign.center,
                  style:  Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
