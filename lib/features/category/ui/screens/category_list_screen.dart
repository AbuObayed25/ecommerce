import 'package:flutter/material.dart';
import 'package:ecommerce/features/home/ui/widgets/category_item_widget.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  static const String name = '/category-list-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category List'),
      ),
      body: GridView.builder(
        itemCount: 17,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context,index) {
          return CategoryListScreen();
        },
      ),
      // body: Column(
      //   children: [
      //     Center(
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('Dhaka , Bangladesh'),
      //       ),
      //     ),
      //   ],
      // ),

    );
  }
}
