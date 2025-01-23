import 'package:ecommerce/features/product/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductListScreen.name,
            arguments: 'Computer');
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.themecolor.withOpacity(.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.computer, color: AppColors.themecolor),
          ),
          const SizedBox(height: 4),
          const Text(
            'Electronics',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.themecolor,
            ),
          ),
        ],
      ),
    );
  }
}
