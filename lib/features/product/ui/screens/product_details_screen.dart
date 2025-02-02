import 'package:ecommerce/app/app_colors.dart';
import 'package:ecommerce/features/product/ui/widgets/product_image_carousel_slider.dart';
import 'package:ecommerce/features/product/ui/widgets/product_quantity_inc_dec_button.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.productId});

  static const String name = '/product/product-details';
  final int productId;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                ProductImageCarouselSlider(),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Happy New Year Special Deal Save 30%',
                                style: textTheme.titleMedium,
                              )
                            ],
                          ),
                        ),
                        ProductQuantityIncDecButton(
                          onChange: (int value) {},
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          _buildPriceAndAddToCartSection(textTheme)
        ],
      ),
    );
  }

  Widget _buildPriceAndAddToCartSection(TextTheme textTheme) {
    return Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.themecolor.withOpacity(.3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Price',
                    style: textTheme.titleSmall,
                  ),
                  Text(
                    '\$1000',
                    style: textTheme.titleMedium?.copyWith(
                      color: AppColors.themecolor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 120,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Add to Cart'),
                ),
              ),
            ],
          ),
        );
  }
}
