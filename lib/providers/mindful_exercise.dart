import 'package:flutter/material.dart';
import 'package:flutter_app5/models/mindfull_exercise_model.dart';
import 'package:flutter_app5/pages/main_screens/mindfull_exercise_page.dart';

class MindfulExercise extends ChangeNotifier {
  List<MindfullExercise> _allmindfulnessExercise = [];
  List<MindfullExercise> mindfulnessExercise = [];

  MindfulExercise() {
    _allmindfulnessExercise = [
      MindfullExercise(
        category: "Beginners",
        name: "Body Scan",
        description:
            "This exercise helps you become aware of different parts of your body, promoting relaxation and reducing tension. By mentally scanning from head to toe, you can notice areas of tension and consciously release them.",
        instruction: [
          "Lie down or sit comfortably.",
          "Close your eyes and take a deep breath.",
          "Start at the top of your head and slowly move your attention down through your body, noting any sensations.",
          "Focus on each area for a few moments, and then gently move to the next part of your body.",
          "Continue until you have scanned your entire body."
        ],
        duration: 10,
        instructionUrl: "https://github.com/HGSChandeepa/Meditate",
        imagePath: "assets/images/body_scan.png",
      ),
      MindfullExercise(
        category: "Beginners",
        name: "Mindful Breathing",
        description:
            "This mindfulness exercise is perfect for beginners. It focuses on the simple act of breathing to help you become more aware of the present moment. By paying attention to each inhale and exhale, you can learn to anchor yourself in the here and now, reducing feelings of stress and anxiety.",
        instruction: [
          "Find a comfortable seat.",
          "Close your eyes and take a deep breath in.",
          "Exhale slowly, focusing on your breath.",
          "Repeat for the duration of the exercise."
        ],
        duration: 5,
        instructionUrl: "https://github.com/HGSChandeepa/Meditate",
        imagePath: "assets/images/mindfull.png",
      ),
    ];
    mindfulnessExercise = List.from(_allmindfulnessExercise);
  }
}
