import 'package:flutter/material.dart';
import 'package:testing_flutter/components/search_box.dart';
import 'package:testing_flutter/models/color_model.dart';
import 'package:testing_flutter/models/food_model.dart';
import 'package:testing_flutter/pages/food_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Finds  Products',
            style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 25, bottom: 30.0),
                child: Search_Box(),
              ),
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    FoodModel food = foods[index];
                    Color color = colors[index % colors.length];
                    return FoodItem(
                      food,
                      backgroudColor: color,
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 1.0,
                  ),
                  itemCount: foods.length)
            ],
          ),
        ),
      ),
    );
  }
}
