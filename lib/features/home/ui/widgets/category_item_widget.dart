import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.themecolor.withOpacity(.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(Icons.computer,color: AppColors.themecolor),
        ),
        const SizedBox(height: 4),
        Text('Electronics',style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.themecolor,
        ),),
      ],
    );
  }
}