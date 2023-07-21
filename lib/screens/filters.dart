import 'package:flutter/material.dart';

enum Filter{
  isCardioVascular,
  isFatLose,
  isMuscularStrength,
}

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key, required this.currentFilters}) : super(key: key);

  final Map<Filter,bool> currentFilters;

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  var _cardioVascular = false;
  var _fatLose = false;
  var _muscularStrength = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

     _cardioVascular = widget.currentFilters[Filter.isCardioVascular]!;
     _fatLose = widget.currentFilters[Filter.isFatLose]!;
     _muscularStrength = widget.currentFilters[Filter.isMuscularStrength]!;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Filters"),
      ),
      body: WillPopScope(
        onWillPop: () async{
          Navigator.of(context).pop({
            Filter.isCardioVascular: _cardioVascular,
            Filter.isMuscularStrength: _muscularStrength,
            Filter.isFatLose: _fatLose,
          });
          return false;
        },
        child: Column(
          children: [
            SwitchListTile(
              value: _cardioVascular,
              onChanged: (isChecked){
                setState(() {
                  _cardioVascular = isChecked;
                });
              },
              title: Text("Cardio Vascular", style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              ),),
              subtitle: Text("Only include Cardio Related Exercises",style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              ),),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34,right: 22),
            ),
            SwitchListTile(
              value: _fatLose,
              onChanged: (isChecked){
                setState(() {
                  _fatLose = isChecked;
                });
              },
              title: Text("Fat Lose", style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              ),),
              subtitle: Text("Only include Fat Lose Related Exercises",style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              ),),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34,right: 22),
            ),
            SwitchListTile(
              value: _muscularStrength,
              onChanged: (isChecked){
                setState(() {
                  _muscularStrength = isChecked;
                });
              },
              title: Text("Muscular Strength", style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              ),),
              subtitle: Text("Only include Muscular Strength Related Exercises",style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              ),),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34,right: 22),
            ),
          ],
        ),
      ),
    );
  }
}
