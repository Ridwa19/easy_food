import 'package:flutter/material.dart';

class CustomBurgerScreen extends StatefulWidget {
  @override
  _CustomBurgerScreenState createState() => _CustomBurgerScreenState();
}

class _CustomBurgerScreenState extends State<CustomBurgerScreen> {
  int quantity = 1;
  int spiceLevel = 1;
  double totalPrice = 16.49;

  void updatePrice() {
    setState(() {
      totalPrice = 16.49 * quantity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Customize Your Burger'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset('assets/images/burger.png', height: 200),
            SizedBox(height: 10),
            // Spicy Level
            Text('Spicy Level', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _spiceChip('Mild', 1),
                _spiceChip('Hot', 2),
                _spiceChip('Extra Hot', 3),
              ],
            ),
            SizedBox(height: 20),
            // Portion Size
            Text('Portion', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove_circle),
                  onPressed: () {
                    if (quantity > 1) {
                      setState(() {
                        quantity--;
                        updatePrice();
                      });
                    }
                  },
                ),
                Text('$quantity', style: TextStyle(fontSize: 20)),
                IconButton(
                  icon: Icon(Icons.add_circle),
                  onPressed: () {
                    setState(() {
                      quantity++;
                      updatePrice();
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            // Toppings Section
            Text('Toppings', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Wrap(
              spacing: 8,
              children: [
                _toppingChip('Tomato'),
                _toppingChip('Onions'),
                _toppingChip('Pickles'),
                _toppingChip('Bacon'),
              ],
            ),
            SizedBox(height: 20),
            // Price and Order Button
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${totalPrice.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Navigator.pushNamed(context, '/payment');
                  },
                  child: Text('Order Now'),
                ),
              ],
            ),
          ],
        ),
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

  Widget _toppingChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
