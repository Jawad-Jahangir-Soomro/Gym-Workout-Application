import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({Key? key, required this.category, required this.onSelectCategory}) : super(key: key);

  final Category category;
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(category.imageURL),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 44),
                child: Text(
                  category.title,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
