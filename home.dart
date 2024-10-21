// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:selling_house_holds/Modren_Lamp.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  Color customColor = Color(0xFF73967D);
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Furniture App"),
      ),
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Furniture \n in your Style",
                    style: TextStyle(fontSize: 35),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 150,
                    width: 270,
                    decoration: BoxDecoration(
                      color: customColor,
                      border:
                          Border.all(color: Color.fromRGBO(113, 138, 86, 1)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Elegant \nWhite Chair",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              SizedBox(height: 11),
                              Text("\$ 200", style: TextStyle(fontSize: 30))
                            ],
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: Image.asset(
                              "assets/chair12.png",
                              height: 220,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  _tabSection(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 35,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_rounded,
                size: 20,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 20,
              ),
              label: "",
            ),
          ],
          currentIndex: 0,
          backgroundColor: Colors.green, // Set the background color here
          selectedItemColor: const Color.fromARGB(
              255, 158, 132, 132), // Color for the selected icon
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            // Using a switch statement for better readability
            switch (index) {
              case 0:
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => home()));
                // Navigate to Home screen
                break;
              case 1:
                // Navigate to Categories/Dashboard screen
                break;
              case 2:
                // Navigate to Search screen
                break;
              case 3:
                // Navigate to Shopping Cart screen
                break;
              case 4:
                //
                break;
              case 5:
                //
                break;
            }
          },
        ),
      ),
    );
  }

  Widget _tabSection() {
    return Column(
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: TabBar(
            controller: _tabController,
            isScrollable: true, // Makes the TabBar scrollable
            tabs: [
              Tab(text: "ALL"),
              Tab(text: "Chairs"),
              Tab(text: "Lamps"),
              Tab(text: "Clocks"),
              Tab(text: "Candle"),
            ],
          ),
        ),
        Container(
          height: 250, // Set a fixed height for the TabBarView
          child: TabBarView(
            controller: _tabController,
            children: [
              // First Tab - GridView
              Center(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  padding: EdgeInsets.all(8.0),
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                modernLamp(), // Check class name spelling
                          ),
                        );
                      },
                      child: Container(
                        child: habitItem(
                          "assets/chair12.png",
                          "Chair",
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => modernLamp(),
                          )),
                      child: habitItem(
                          "assets/ai-generated-hanging-lamp-isolated-on-transparent-background-png.webp",
                          "Hanging lamp"),
                    ),
                    habitItem("assets/lamp-png-13.png", "Modern Lamp"),
                    habitItem(
                        "assets/vintage-wall-clock-clipart-design-illustration-free-png.webp",
                        "Vintage Clock"),
                    habitItem("assets/fabric-armchair.png", "Fabric Arm Chair"),
                    habitItem("assets/Modern-Chair-Transparent-Background.png",
                        "Modern Chair"),
                    habitItem("assets/three chairs.webp", "Chair Set"),
                    habitItem(
                        "assets/pngtree-scented-candle-transparent-flowers-png-image_6687333.png",
                        "Scented Candle"),
                    habitItem(
                        "assets/158532-ceiling-lamp-free-download-png-hd.png",
                        "Celling Lamp"),
                    habitItem(
                        "assets/pngtree-colorful-candelas-png-image_13504805.png",
                        "Color Full Candles"),
                    habitItem("assets/pngimg.com - clock_PNG6659.png",
                        "Wooden Clock "),
                    habitItem(
                        "assets/vecteezy_ai-generated-candles-burning-on-transparent-background-png_36391981.png",
                        "Date Candles"),
                    habitItem(
                        "assets/vecteezy_christmas-candle-holders-isolated-on-transparent-background_47605603.png",
                        "   Christmas Candle  and  Holder"),
                    habitItem(
                        "assets/pngtree-wall-clock-watch-png-image_6563204.png",
                        "Slim Clock"),
                    habitItem(
                        "assets/vecteezy_christmas-candle-holders-isolated-on-transparent-background_47605605.png",
                        "Candle Holder"),
                  ],
                ),
              ),

              // Second Tab - GridView for Chairs
              Center(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  padding: EdgeInsets.all(8.0),
                  children: [
                    habitItem("assets/chair12.png", "Chair"),
                    habitItem("assets/fabric-armchair.png", "Fabric Arm Chair"),
                    habitItem("assets/Modern-Chair-Transparent-Background.png",
                        "Modern Chair"),
                    habitItem("assets/three chairs.webp", "Chair Set"),
                  ],
                ),
              ),
              Center(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  padding: EdgeInsets.all(8.0),
                  children: [
                    habitItem(
                        "assets/ai-generated-hanging-lamp-isolated-on-transparent-background-png.webp",
                        "Hanging lamp"),
                    habitItem("assets/lamp-png-13.png", "Modern Lamp"),
                    habitItem(
                        "assets/158532-ceiling-lamp-free-download-png-hd.png",
                        "Celling Lamp"),
                  ],
                ),
              ),
              Center(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  padding: EdgeInsets.all(8.0),
                  children: [
                    habitItem("assets/clock-2634551_640.webp", "Wall Clock"),
                    habitItem("assets/pngimg.com - clock_PNG6659.png",
                        "Wooden Clock "),
                    habitItem(
                        "assets/pngtree-wall-clock-watch-png-image_6563204.png",
                        "Slim Clock"),
                    habitItem(
                        "assets/vintage-wall-clock-clipart-design-illustration-free-png.webp",
                        "Vintage Clock"),
                  ],
                ),
              ),
              Center(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  padding: EdgeInsets.all(8.0),
                  children: [
                    habitItem(
                        "assets/pngtree-colorful-candelas-png-image_13504805.png",
                        "Color Full Candles"),
                    habitItem(
                        "assets/vecteezy_ai-generated-candles-burning-on-transparent-background-png_36391981.png",
                        "Date Candles"),
                    habitItem(
                        "assets/vecteezy_christmas-candle-holders-isolated-on-transparent-background_47605603.png",
                        "   Christmas Candle  and  Holder"),
                    habitItem(
                        "assets/vecteezy_christmas-candle-holders-isolated-on-transparent-background_47605605.png",
                        "Candle Holder"),
                  ],
                ),
              ),
              // Other tabs - Simple text for now
              // Center(child: Text("Lamps")),
              // Center(child: Text("Clocks")),
              // Center(child: Text("Candle")),
            ],
          ),
        )
      ],
    );
  }

  Widget habitItem(
      //IconData icon
      String imagepath,
      String label) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 229, 237, 238),
          border: Border.all(color: Color.fromARGB(255, 255, 255, 255)),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon(
          //   icon,
          //   size: 40,
          //   color: Colors.amber,
          // ),
          Image.asset(
            imagepath,
            height: 80, // Set the height of the image
            width: 80, // Set the width of the image
            fit: BoxFit.contain, // Ensure the image fits within the space
          ),
          SizedBox(
            height: 5,
          ),
          Text(label)
        ],
      ),
    );
  }

  // Widget habitItem1(
  //   String imagepath,
  //   String label,
  //   String icon,
  // ) {
  //   return Container(
  //     decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(10)),
  //     child: Column(children: [Icon(icon,size: 40,color: Colors.amber,),
  //     Image.asset(imagepath,height: 80,width: 80,fit: BoxFit.contain,),
  //     Text(""),
  //     ],),

  //   );
  // }
}
