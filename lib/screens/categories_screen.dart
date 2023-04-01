import 'package:flutter/material.dart';
import 'package:physical_therapy/main.dart';
import '../widgets/category_item.dart';
import '../dummy_data.dart';
import 'about_screen.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = 'category_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                ),
              ), child: SizedBox(),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => CategoriesScreen()));
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AboutScreen()));
              },
            ),
          ],
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map(
              (catData) =>
                  CategoryItem(catData.id, catData.title, catData.color),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 900,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 5,
          mainAxisExtent: 90,
        ),
      ),
    );
  }
}
