import 'package:flutter/material.dart';
import 'package:real_estate/common/custom_text.dart';

class FilterDrawer extends StatefulWidget {
  const FilterDrawer({super.key});

  @override
  _FilterDrawerState createState() => _FilterDrawerState();
}

class _FilterDrawerState extends State<FilterDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  RangeValues _priceRange = const RangeValues(5000000, 25000000);

  List<String> propertyTypes = [
    "Apartment",
    "Villa",
    "Penthouse",
    "Studio",
    "House",
  ];
  List<String> selectedPropertyTypes = [];

  List<String> locations = ["Bangalore", "Delhi", "Mumbai", "Chennai", "Pune"];
  List<String> selectedLocations = [];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double baseSize = MediaQuery.of(context).size.shortestSide * 0.035;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Drawer(
      width: width * 0.75,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return SingleChildScrollView(
            child: Container(
              height: height,
              padding: const EdgeInsets.only(top: 30),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(14, 39, 63, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min, // Prevents expansion issues
                  children: [
                    /// Close Button & Title
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Filter",
                          color: Colors.white,
                          fontSize: baseSize * 1.2 * textScaleFactor,
                          fontWeight: FontWeight.bold,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: baseSize * 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    /// Property Type Section
                    buildSectionTitle(
                      "Property Type",
                      baseSize,
                      textScaleFactor,
                    ),
                    const SizedBox(height: 10),
                    buildFilterChips(propertyTypes, selectedPropertyTypes),
                    const SizedBox(height: 30),

                    /// Price Range Slider
                    buildSectionTitle("Price Range", baseSize, textScaleFactor),
                    const SizedBox(height: 10),
                    RangeSlider(
                      values: _priceRange,
                      min: 5000000,
                      max: 50000000,
                      divisions: 10,
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey,
                      labels: RangeLabels(
                        "₹${_priceRange.start.toStringAsFixed(0)}",
                        "₹${_priceRange.end.toStringAsFixed(0)}",
                      ),
                      onChanged: (values) {
                        setState(() {
                          _priceRange = values;
                        });
                      },
                    ),
                    const SizedBox(height: 30),

                    /// Location Section
                    buildSectionTitle("Location", baseSize, textScaleFactor),
                    const SizedBox(height: 10),
                    buildFilterChips(locations, selectedLocations),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// **Section Title Widget**
  Widget buildSectionTitle(
    String title,
    double baseSize,
    double textScaleFactor,
  ) {
    return CustomText(
      text: title,
      color: Colors.white,
      fontSize: baseSize * textScaleFactor,
      fontWeight: FontWeight.w600,
    );
  }

  /// **Filter Chips Widget**
  Widget buildFilterChips(List<String> items, List<String> selectedItems) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children:
          items.map((item) {
            bool isSelected = selectedItems.contains(item);
            return GestureDetector(
              onTap: () {
                setState(() {
                  isSelected
                      ? selectedItems.remove(item)
                      : selectedItems.add(item);
                });
              },
              child: FilterChipWidget(label: item, isSelected: isSelected),
            );
          }).toList(),
    );
  }
}

/// **Custom Chip Widget**
class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool isSelected;

  const FilterChipWidget({
    super.key,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    double baseSize = MediaQuery.of(context).size.shortestSide * 0.035;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : const Color.fromRGBO(28, 56, 86, 1),
        borderRadius: BorderRadius.circular(20),
        border: isSelected ? Border.all(color: Colors.white) : null,
      ),
      child: CustomText(
        text: label,
        color: isSelected ? const Color.fromRGBO(14, 39, 63, 1) : Colors.white,
        fontSize: baseSize * 0.8 * textScaleFactor,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
