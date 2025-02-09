import 'package:flutter/material.dart';
import '../../../../app/app_colors.dart';
import '../../../../app/assets_path.dart';
import '../../../common/ui/widgets/product_quantity_inc_dec_button.dart';

class CartProductItemWidget extends StatelessWidget {
  const CartProductItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 2,
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        child: Row(
          children: [
            Image.asset(
              AssetsPath.dummyImagePng,
              width: 90,
              height: 90,
              fit: BoxFit.scaleDown,
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Nike Shoe - AK45394 New year deal',
                              maxLines: 1,
                              style: textTheme.bodyLarge
                                  ?.copyWith(overflow: TextOverflow.ellipsis),
                            ),
                            Row(
                              children: [
                                Text('Color:Red'),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text('Size:XL'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_outline),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$100',
                        style: textTheme.titleSmall?.copyWith(
                            color: AppColors.themecolor,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      ProductQuantityIncDecButton(
                        onChange: (int noOfItem) {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
