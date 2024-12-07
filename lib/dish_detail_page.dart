// dish_detail_page.dart

import 'package:flutter/material.dart';
import 'dish.dart';

class DishDetailPage extends StatelessWidget {
  final Dish dish;

  const DishDetailPage({super.key, required this.dish});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dish.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(dish.imageUrl),
            const SizedBox(height: 8.0),
            Text(
              dish.name,
              style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(dish.description),
            const SizedBox(height: 8.0),
            Text(
              '\$${dish.price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
