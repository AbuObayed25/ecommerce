import 'package:ecommerce/features/common/ui/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/ui/controllers/main_bottom_nav_controller.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});


  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) => _onPop,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Wishlist'),
          leading: IconButton(onPressed:_onPop, icon: Icon(Icons.arrow_back),),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            childAspectRatio: 0.8,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            return const FittedBox(
              child: ProductItemWidget(),
            );
          },
        ),
      ),
    );
  }

  void _onPop() {
    Get.find<MainBottomNavController>().backToHome();
  }
}
