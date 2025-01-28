import 'package:flutter/material.dart';

class FoodDetailsScreen extends StatefulWidget {
  @override
  _FoodDetailsScreenState createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  int quantity = 1;
  int spiceLevel = 1; // 1: Mild, 2: Hot, 3: Extra Hot

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Food Details'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          // Image Section
          Image.asset('assets/images/burger.png', height: 250, fit: BoxFit.cover),
          SizedBox(height: 10),
          // Details Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cheeseburger Wendy\'s Burger',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text('⭐ 4.9 | 26 mins'),
                SizedBox(height: 10),
                Text(
                  'The Cheeseburger Wendy\'s Burger is a classic fast food burger '
                  'that packs a punch of flavor in every bite.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                // Spicy Level
                Text('Spicy Level'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _spiceChip('Mild', 1),
                    _spiceChip('Hot', 2),
                    _spiceChip('Extra Hot', 3),
                  ],
                ),
                SizedBox(height: 10),
                // Quantity
                Text('Portion Size'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove_circle),
                      onPressed: () {
                        setState(() {
                          if (quantity > 1) quantity--;
                        });
                      },
                    ),
                    Text('$quantity', style: TextStyle(fontSize: 20)),
                    IconButton(
                      icon: Icon(Icons.add_circle),
                      onPressed: () {
                        setState(() {
                          quantity++;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // Price and Order Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${(8.24 * quantity).toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add to cart or navigate
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child: Text('Order Now'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _spiceChip(String label, int level) {
    return ChoiceChip(
      label: Text(label),
      selected: spiceLevel == level,
      onSelected: (selected) {
        setState(() {
          spiceLevel = level;
        });
      },
      selectedColor: Colors.red,
      backgroundColor: Colors.grey.shade300,
      labelStyle: TextStyle(
        color: spiceLevel == level ? Colors.white : Colors.black,
      ),
    );
  }
}
