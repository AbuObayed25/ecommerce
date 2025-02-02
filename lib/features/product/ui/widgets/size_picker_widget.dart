import 'package:ecommerce/app/app_colors.dart';
import 'package:flutter/material.dart';

class SizePickerWidget extends StatefulWidget {
  const SizePickerWidget({super.key, required this.sizes, required this.onSizeSelected});

  final List<String> sizes;
  final Function(String) onSizeSelected;

  @override
  State<SizePickerWidget> createState() => _SizePickerWidgetState();
}

class _SizePickerWidgetState extends State<SizePickerWidget> {
  String? _selectedSize;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: getSizeItems(),
      ),
    );
  }

  List<Widget> getSizeItems() {
    List<Widget> SizeItemWidgetList = [];
    for (String size in widget.sizes) {
      Widget item = _getSizeItemWidget(
        name: size,
        onTap: () {
          _selectedSize = size;
          widget.onSizeSelected(_selectedSize!);
          setState(() {});
        },
        isSelected: _selectedSize == size,
      );
      SizeItemWidgetList.add(item);
    }
    return SizeItemWidgetList;
  }

  Widget _getSizeItemWidget(
      {required String name,
        required VoidCallback onTap,
        required bool isSelected}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
            border: Border.all(),
            color: isSelected ? AppColors.themecolor : Colors.transparent),
        alignment: Alignment.center,
        child: Text(
          name,
          style: TextStyle(
            color: isSelected ? Colors.white : null,
          ),
        ),
      ),
    );
  }
}
