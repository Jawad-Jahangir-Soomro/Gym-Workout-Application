import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key, required this.onSelectScreen}) : super(key: key);

  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primaryContainer,
                    Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
            child: Row(
              children: [
                Icon(
                  Icons.sports_mma_outlined,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  "Firing Up!",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.sports, size: 26, color: Theme.of(context).colorScheme.onBackground,),
            title: Text(
              "Exercises",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.onBackground, fontSize: 24,),
            ),
            onTap: (){
              onSelectScreen("exercise");
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 26, color: Theme.of(context).colorScheme.onBackground,),
            title: Text(
              "Filters",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.onBackground, fontSize: 24,),
            ),
            onTap: (){
              onSelectScreen("filters");
            },
          ),
        ],
      ),
    );
  }
}
