import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Image.network(product.image, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(product.title, maxLines: 2),
          ),
          Text("₹${product.price}",
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}