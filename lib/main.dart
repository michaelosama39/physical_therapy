// @dart=2.9
import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          accentColor: Colors.white,
          canvasColor: Colors.blue,
          textTheme: ThemeData.light().textTheme.copyWith(
            bodyLarge: const TextStyle(color:Color.fromRGBO(20, 50, 50, 1)),
            bodyMedium: const TextStyle(color:Color.fromRGBO(20, 50, 50, 1)),
            titleLarge: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            ),
          )
      ),
      //home:  MyHomePage(),
      routes: {
        '/':(context)=>splashScreen(),
        //'/':(context)=>CategoriesScreen(),
        CategoriesScreen.routeName: (context)=>CategoriesScreen(),
        CategoryMealsScreen.routeName: (context)=>CategoryMealsScreen(),
        MealDetailScreen.routeName: (context)=>MealDetailScreen(),

      },
    );
  }
}