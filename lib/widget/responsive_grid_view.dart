// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ResponsiveGridView extends StatelessWidget {
  List<GridItem> items;

  ResponsiveGridView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine the number of columns based on screen width
        int columns = (constraints.maxWidth / 150).floor();
        columns = columns < 4 ? 4 : columns; // Minimum 2 columns

        return GridView.builder(
          shrinkWrap: true,
          // physics:
          //     const NeverScrollableScrollPhysics(), // Prevent GridView from scrolling
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            crossAxisSpacing: 8.0, // Horizontal spacing
            mainAxisSpacing: 1.0, // Vertical spacing
            childAspectRatio: 1.2, // Aspect ratio of each grid item
          ),
          padding: const EdgeInsets.all(8.0),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  items[index].icon,
                  // color: Colors.white,
                  size: 30.0,
                ),
                const SizedBox(height: 8.0),
                Expanded(
                  child: Text(
                    items[index].label,
                    style: const TextStyle(
                      // color: Colors.white,
                      fontSize: 12.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class GridItem {
  final IconData icon;
  final String label;

  GridItem({required this.icon, required this.label});
}
