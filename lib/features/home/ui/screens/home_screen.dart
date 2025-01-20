import 'package:ecommerce/app/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/app_bar_icon_button.dart';
import '../widgets/category_item_widget.dart';
import '../widgets/home_carousel_slider.dart';
import '../widgets/home_section_header.dart';
import '../widgets/product_item_widget.dart';
import '../widgets/product_search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String name = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchBarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              ProductSearchBar(
                controller: _searchBarController,
              ),
              const SizedBox(
                height: 16,
              ),
              HomeCarouselSlider(),
              const SizedBox(height: 16),
              HomeSectionHeader(
                title: 'Category',
                onTap: () {},
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getCategoryList(),
                ),
              ),
              const SizedBox(height: 16),
              HomeSectionHeader(
                title: 'Popular',
                onTap: () {},
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getProductList(),
                ),
              ),
              const SizedBox(height: 16),
              HomeSectionHeader(
                title: 'Special',
                onTap: () {},
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getProductList(),
                ),
              ),
              const SizedBox(height: 16),
              HomeSectionHeader(
                title: 'New',
                onTap: () {},
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getProductList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _getCategoryList() {
    List<Widget> categoryList = [];
    for (int i = 0; i < 17; i++) {
      categoryList.add(const Padding(
        padding: EdgeInsets.only(right: 16),
        child: CategoryItemWidget(),
      ));
    }
    return categoryList;
  }

  List<Widget> _getProductList() {
    List<Widget> productList = [];
    for (int i = 0; i < 17; i++) {
      productList.add(const Padding(
        padding: EdgeInsets.only(right: 16),
        child: ProductItemWidget(),
      ));
    }
    return productList;
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.NavBarAppLogoSvg),
      centerTitle: false,
      actions: [
        AppBarIconButton(
          icon: Icons.person_outline,
          onTap: () {},
        ),
        const SizedBox(width: 6),
        AppBarIconButton(
          icon: Icons.call,
          onTap: () {},
        ),
        const SizedBox(width: 6),
        AppBarIconButton(
          icon: Icons.notifications_active_outlined,
          onTap: () {},
        ),
        const SizedBox(width: 6),
      ],
    );
  }
}
