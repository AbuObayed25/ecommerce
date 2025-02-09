import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/ui/controllers/main_bottom_nav_controller.dart';

class CartListScreen extends StatefulWidget {
  const CartListScreen({super.key});

  @override
  State<CartListScreen> createState() => _CartListScreenState();
}
class _CartListScreenState extends State<CartListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) => _onPop,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cartlist'),
          leading: IconButton(onPressed:_onPop, icon:const Icon(Icons.arrow_back)),
        ),
      ),
    );
  }
  void _onPop() {
    Get.find<MainBottomNavController>().backToHome();
  }
}
