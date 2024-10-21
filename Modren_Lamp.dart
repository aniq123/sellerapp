import 'package:flutter/material.dart';
import 'package:selling_house_holds/home.dart';

class modernLamp extends StatefulWidget {
  const modernLamp({super.key});

  @override
  State<modernLamp> createState() => _modernLampState();
}

class _modernLampState extends State<modernLamp> {
  int quantity = 1; // Quantity starts at 1
  Color selectedColor = Colors.grey; // Default color

  // Function to handle color selection
  void selectColor(Color color) {
    setState(() {
      selectedColor = color;
    });
  }

  // Function to increase the quantity
  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  // Function to decrease the quantity
  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const home(), // Check class name spelling
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          // Add SingleChildScrollView here
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Image
                Container(
                  height: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: selectedColor,
                  ),
                  child: const Image(
                    image: AssetImage('assets/chair12.png'),
                  ),
                ),
                const SizedBox(height: 20),

                // Product Title
                const Text(
                  'Halmar Lamp',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                // Product Description
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'This modern lamp brings mid-century style to your home.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),

                // Color Selection
                const Text(
                  'Color',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    buildColorOption(Colors.green),
                    buildColorOption(Colors.blue),
                    buildColorOption(Colors.yellow),
                    buildColorOption(Colors.grey),
                  ],
                ),
                const SizedBox(height: 20),

                // Quantity Selector
                const Text(
                  'Quantity',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: decrementQuantity,
                    ),
                    Text(
                      '$quantity',
                      style: const TextStyle(fontSize: 18),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: incrementQuantity,
                    ),
                    Spacer(),
                    const Text(
                      '\$299',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Price Display

                const SizedBox(height: 20),

                // Add to Cart and VR View buttons
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add to cart logic
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          backgroundColor: Colors.green,
                        ),
                        child: const Text('Add to cart'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // VR View logic
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          backgroundColor: Colors.grey,
                        ),
                        child: const Text('VR View'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget for color option button
  Widget buildColorOption(Color color) {
    return GestureDetector(
      onTap: () => selectColor(color),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: selectedColor == color ? Colors.black : Colors.transparent,
            width: 2,
          ),
        ),
      ),
    );
  }
}
