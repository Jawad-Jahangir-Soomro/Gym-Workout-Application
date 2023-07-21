enum Complexity {
  simple,
  challenging,
  hard,
}

enum Affordability {
  beginner,
  intermediate,
  advance,
}

class Exercise {
  const Exercise({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.targets,
    required this.steps,
    required this.repetition,
    required this.sets,
    required this.complexity,
    required this.affordability,
    required this.isCardioVascular,
    required this.isFatLose,
    required this.isMuscularStrength,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> targets;
  final List<String> steps;
  final int repetition;
  final int sets;
  final Complexity complexity;
  final Affordability affordability;
  final bool isCardioVascular;
  final bool isFatLose;
  final bool isMuscularStrength;
}