import 'package:flutter/foundation.dart';

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> steps;
  final String videoUrl;


  Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.steps,
    required this.videoUrl,
  });
}

