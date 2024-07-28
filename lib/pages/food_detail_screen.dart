import 'package:flutter/material.dart';
import 'package:testing_flutter/models/food_model.dart';

class FoodDetailScreen extends StatelessWidget {
  final FoodModel food;

  const FoodDetailScreen({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left_outlined,
            size: 40.0,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(32.0),
                  bottomRight: Radius.circular(32.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Image.asset(
                food.imagePath ?? '',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      food.text ?? "",
                      style: const TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w500),
                    ),
                    const Icon(Icons.favorite_border_outlined)
                  ],
                ),
                const Text(
                  '1 kg, Price',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.remove,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                              border: Border.all(color: Colors.grey)),
                          child: const Center(child: Text('1')),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        const Icon(
                          Icons.add,
                          color: Colors.green,
                        )
                      ],
                    ),
                    const Text(
                      '\$4.99',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Divider(
                  height: 2.0,
                  indent: 10.0,
                  endIndent: 10.0,
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Detail',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 30.0,
                    )
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const Text(
                  'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Divider(
                  height: 2.0,
                  indent: 10.0,
                  endIndent: 10.0,
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Nutritions',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Container(
                            height: 30,
                            width: 60,
                            // padding: const EdgeInsets.symmetric(vertical: 8.0),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: const Center(
                                child: Text(
                              '100gr',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ))),
                        const Icon(
                          Icons.chevron_right_outlined,
                          size: 30.0,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Divider(
                  height: 2.0,
                  indent: 10.0,
                  endIndent: 10.0,
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Review',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Row(
                          children: List.generate(
                              5,
                              (index) => const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  )),
                        ),
                        const Icon(
                          Icons.chevron_right_outlined,
                          size: 30.0,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                  child: const Center(
                      child: Text(
                    'Add To Basket',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
