import 'package:flutter/material.dart';
import 'product.dart';
import 'cart_page.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Mobiles', price: 200, description: 'Mobiles are used for communication, internet browsing, and multimedia.'),
    Product(name: 'Clothes', price: 50, description: 'Clothes provide protection and fashion. Various styles available.'),
    Product(name: 'Shoes', price: 80, description: 'Shoes protect feet and offer comfort for various activities.'),
    Product(name: 'Groceries', price: 100, description: 'Groceries include food and household items essential for daily living.'),
    Product(name: 'Speakers', price: 150, description: 'Speakers enhance audio experience for music, movies, and events.'),
    Product(name: 'Electronics', price: 300, description: 'Electronics include gadgets like laptops, cameras, and home appliances.'),
    Product(name: 'Wooden Items', price: 250, description: 'Wooden items include furniture and decor made from high-quality wood.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                fillColor: Colors.lightBlue[50],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartPage()),
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              product.description,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${product.price}'),
                ElevatedButton(
                  onPressed: () {
                    // Add to cart logic here
                  },
                  child: Text('Add to Cart'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
