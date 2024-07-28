import 'package:flutter/material.dart';
import 'package:testing_flutter/models/food_model.dart';
import 'package:testing_flutter/pages/food_detail_screen.dart';

class FoodItem extends StatelessWidget {
  const FoodItem(this.food, {super.key, required this.backgroudColor});

  final FoodModel food;
  final Color backgroudColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FoodDetailScreen(food: food),
            ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
            color: backgroudColor.withOpacity(0.3),
            borderRadius: BorderRadius.all( Radius.circular(16.0)),
            border: Border.all(color: backgroudColor)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16.0)),
              child: Image.asset(
                food.imagePath ?? '',
                width: 120.0,
                height: 120.0,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              food.text ?? '',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4.0),
          ],
        ),
      ),
    );
  }
}
