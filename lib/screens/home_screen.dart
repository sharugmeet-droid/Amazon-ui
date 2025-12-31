import 'package:flutter/material.dart';
import '../widgets/amazon_app_bar.dart';
import '../widgets/category_chip.dart';
import '../widgets/product_card.dart';
import '../data/dummy_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AmazonAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryChip(title: "Mobiles"),
                  CategoryChip(title: "Fashion"),
                  CategoryChip(title: "Electronics"),
                  CategoryChip(title: "Home"),
                  CategoryChip(title: "Deals"),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.65,
              ),
              itemCount: dummyProducts.length,
              itemBuilder: (context, index) {
                return ProductCard(product: dummyProducts[index]);
              },
            )
          ],
        ),
      ),
    );
  }
}