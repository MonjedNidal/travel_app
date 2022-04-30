import 'package:flutter/material.dart';
import 'package:travel_app/app_data.dart';
import '../widgets/category_item.dart';
import 'package:google_fonts/google_fonts.dart';


class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("دليلك السياحي"),
      ),
      body: GridView(
        padding:const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: Categories_data.map((categoryData) =>
            CategoryItem(categoryData.id,categoryData.title, categoryData.imageUrl)).toList(),
      ),
    );
  }
}
