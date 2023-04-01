import 'package:flutter/material.dart';
import '../screens/meal_detail_screen.dart';

class MealItem extends StatelessWidget {

  final String id;
  final String imageUrl;
  final String title;
  final String videoUrl;

  const MealItem({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.videoUrl,
  });

  void selectMeal(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      MealDetailScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  // child: Image.asset(
                  //   imageUrl,
                  //   height: 200,
                  //   width: double.infinity,
                  //   fit: BoxFit.cover,
                  // ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.search),
                  const SizedBox(
                    width: 6,
                  ),
                  SizedBox(
                      width: 200,
                      child: Text(
                        title,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
