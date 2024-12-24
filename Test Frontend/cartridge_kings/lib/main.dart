import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartridge Kings',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Arial',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildTopBar(),
            _buildHeader(),
            _buildNavBar(),
            _buildHeroSection(),
            _buildFeaturedProducts(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Text('Franchise Opportunities'),
              SizedBox(width: 20),
              Text('Help'),
              SizedBox(width: 20),
              Text('Feedback'),
            ],
          ),
          Row(
            children: const [
              Text('hello@email.com'),
              SizedBox(width: 20),
              Text('0800 022 2 022'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.star, color: Colors.orange[400], size: 40),
              const SizedBox(width: 10),
              const Text(
                'CARTRIDGE KINGS',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    suffixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                icon: const Icon(Icons.shopping_cart),
                label: const Text('CART (1)'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavBar() {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          _buildNavButton('HOME'),
          _buildNavButton('INK CARTRIDGES'),
          _buildNavButton('TONER CARTRIDGES'),
          _buildNavButton('CONTACT US'),
          _buildNavButton('LOGIN / REGISTER'),
        ],
      ),
    );
  }

  Widget _buildNavButton(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      height: 400,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/hero_image.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'FIND THE RIGHT CARTRIDGES FOR YOUR PRINTER',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildDropdown('1. Printer Brand'),
                  const SizedBox(width: 10),
                  _buildDropdown('2. Printer Series'),
                  const SizedBox(width: 10),
                  _buildDropdown('3. Printer Model'),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                    ),
                    child: const Text('FIND CARTRIDGES'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown(String hint) {
    return Container(
      width: 200,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(4),
      ),
      child: DropdownButton<String>(
        hint: Text(hint),
        isExpanded: true,
        underline: const SizedBox(),
        items: ['Option 1', 'Option 2', 'Option 3']
            .map((e) => DropdownMenuItem(value: e, child: Text(e)))
            .toList(),
        onChanged: (value) {
          // Handle dropdown selection
        },
      ),
    );
  }

  Widget _buildFeaturedProducts() {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          const Text(
            'FEATURED PRODUCTS',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_left, size: 40),
                onPressed: () {
                  // Logika untuk tombol kiri
                },
              ),
              const SizedBox(width: 20),
              Row(
                children: [
                  _buildProductCard(
                    'HP 62 Black Ink Cartridge',
                    '(HPC2P04AE)',
                    '\$9.49',
                  ),
                  const SizedBox(width: 20),
                  _buildProductCard(
                    'Canon MF-3110 Toner',
                    '(CZP04AE)',
                    '\$36.45',
                  ),
                  const SizedBox(width: 20),
                  _buildProductCard(
                    'HP 62 Black Ink Cartridge',
                    '(HPC2P04AE)',
                    '\$5.99',
                  ),
                ],
              ),
              const SizedBox(width: 20),
              IconButton(
                icon: const Icon(Icons.arrow_right, size: 40),
                onPressed: () {
                  // Logika untuk tombol kanan
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(String name, String code, String price) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        children: [
          Image.asset(
              'assets/product_image.jpg'), // Replace with your image path
          const SizedBox(height: 20),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            code,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            price,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: const Size(double.infinity, 40),
            ),
            child: const Text('ADD TO CART'),
          ),
        ],
      ),
    );
  }
}
