import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  final Function(int) onCategoryTap;
  const CategoryScreen({super.key, required this.onCategoryTap});

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int? selectedIndex;

  final List<Map<String, String>> categories = [
    {'name': 'Fruits', 'image': 'assets/category1.png', 'items': '87 items'},
    {
      'name': 'Vegetables',
      'image': 'assets/category2.png',
      'items': '87 items'
    },
    {'name': 'Mushroom', 'image': 'assets/category3.png', 'items': '87 items'},
    {'name': 'Dairy', 'image': 'assets/category4.png', 'items': '87 items'},
    {'name': 'Oats', 'image': 'assets/category5.png', 'items': '87 items'},
    {'name': 'Bread', 'image': 'assets/category6.png', 'items': '87 items'},
    {'name': 'Rice', 'image': 'assets/icon3.png', 'items': '27 items'},
    {'name': 'Egg', 'image': 'assets/category4.png', 'items': '120 items'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => widget.onCategoryTap(0),
        ),
        title: const Text("Categories"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1.0,
          ),
          itemBuilder: (context, index) {
            bool isSelected = selectedIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected ? Colors.orange[300] : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      categories[index]['image']!,
                      width: 40,
                      height: 40,
                      color: isSelected ? Colors.white : Colors.orange,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      categories[index]['name']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      categories[index]['items']!,
                      style: TextStyle(
                        color: isSelected ? Colors.white70 : Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),

                
              ),
            );
          },
        ),
      ),
    );
  }
}
