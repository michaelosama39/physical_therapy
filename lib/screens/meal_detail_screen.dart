import 'dart:io';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:physical_therapy/dummy_data.dart';


class MealDetailScreen extends StatefulWidget {
  static const routeName = 'meal_detail';

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  //functions
  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(text, style: Theme.of(context).textTheme.titleLarge),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   border: Border.all(color: Colors.grey),
      //   borderRadius: BorderRadius.circular(10),
      // ),
      margin: EdgeInsets.symmetric(vertical: 0,horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 0,horizontal: 5),
      height: 300,
      width: double.infinity,
      child: child,
    );
  }



  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    openVideo() async{
      final url =  selectedMeal.videoUrl;
      print("url: ${url}");
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch url';
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [

          //image
          // Container(
          //   height: 180,
          //   width: double.infinity,
          //   child: Image.asset(
          //     selectedMeal.imageUrl,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(selectedMeal.imageUrl),
              ),
            ),
          ),

          //description
          buildSectionTitle(context, 'Description'),
          buildContainer(ListView.builder(
            itemBuilder: (ctx, index) => Column(
              children: [
                ListTile(
                  title: Text(selectedMeal.steps[index],),
                ),
              ],
            ),
            itemCount: selectedMeal.steps.length,
          )),
        ],

      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: openVideo,
        child: new Icon(Icons.slow_motion_video),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
