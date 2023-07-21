import 'package:flutter/material.dart';
import 'package:gym_workout_app/screens/categories.dart';
import 'package:gym_workout_app/screens/exercises.dart';
import 'package:gym_workout_app/screens/filters.dart';
import 'package:gym_workout_app/widgets/main_drawer.dart';

import '../data/dummy_data.dart';
import '../models/exercise.dart';

const kInitialFilter = {
  Filter.isFatLose: false,
  Filter.isMuscularStrength: false,
  Filter.isCardioVascular: false,
};

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectPageIndex = 0;

  void _selectPage(int index){
    setState(() {
      _selectPageIndex = index;
    });
  }

  final List<Exercise> _favoriteExercise = [];
  Map<Filter,bool> _selectedFilter = kInitialFilter;

  void _showInfoMessage(String message){
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  void _toggleExerciseFavoriteScreen(Exercise exercise){
    final isExisting = _favoriteExercise.contains(exercise);
    if(isExisting){
      setState(() {
        _favoriteExercise.remove(exercise);
      });
      _showInfoMessage("Exercise is no Longer Favorite!");
    }
    else{
      setState(() {
        _favoriteExercise.add(exercise);
      });
      _showInfoMessage("Marked as a Favorite");
    }
  }

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == "filters") {
      final result = await Navigator.of(context).push<Map<Filter,bool>>(
        MaterialPageRoute(
          builder: (ctx) => FilterScreen(currentFilters: _selectedFilter,),
        ),
      );
      setState(() {
        _selectedFilter = result ?? kInitialFilter;
      });
    }
  }


  @override
  Widget build(BuildContext context) {

    final availableExercises = dummyMeals.where((exercise){
      if(_selectedFilter[Filter.isCardioVascular]! && !exercise.isCardioVascular){
        return false;
      }
      if(_selectedFilter[Filter.isFatLose]! && !exercise.isFatLose){
        return false;
      }
      if(_selectedFilter[Filter.isMuscularStrength]! && !exercise.isMuscularStrength){
        return false;
      }

      return true;

    }).toList();

    Widget activePage = CategoriesScreen(
      onToggleScreen: _toggleExerciseFavoriteScreen,
      availableExercises: availableExercises,
    );
    var activePageTitle = "Categories";

    if(_selectPageIndex == 1){
      activePage = ExercisesScreen(
          exercises: _favoriteExercise,
        onToggleFavorite: _toggleExerciseFavoriteScreen,
      );
      activePageTitle = "Your Favorite";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      drawer: MainDrawer(onSelectScreen: _setScreen),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_accessibility_outlined),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}
