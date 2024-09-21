import 'package:flutter/material.dart';
import 'package:flutter_app5/models/meditation_exercise_model.dart';
import 'package:flutter_app5/models/mindfull_exercise_model.dart';
import 'package:flutter_app5/models/sleep_exercise_model.dart';
import 'package:flutter_app5/pages/main_screens/mindfull_exercise_page.dart';
import 'package:flutter_app5/providers/meditation_provider.dart';
import 'package:flutter_app5/providers/mindful_exercise.dart';
import 'package:flutter_app5/providers/sleep_provider.dart';
import 'package:provider/provider.dart';

class FillterDataProvider extends ChangeNotifier {
  List<dynamic> _allData = [];
  List<dynamic> _filterData = [];

  // get all the data from other providers
  Future<void> getData(BuildContext context) async {
    //ensure this ri=un after thw build
    await Future.delayed(Duration.zero);

    // mindfull execises
    final List<MindfullExercise> mindfullExercise =
        Provider.of<MindfulExerciseProvider>(context, listen: false)
            .mindfulnessExercise;

    //  meditation

    final List<MeditationExercise> meditationExeercise =
        Provider.of<MeditationProvider>(context, listen: false)
            .meditationExercise;

    // sleep exercise

    final List<SleepExercise> sleepExercise =
        Provider.of<SleepProvider>(context, listen: false).sleepExercise;

    _allData = [
      ...mindfullExercise,
      ...meditationExeercise,
      ...sleepExercise,
    ];
  }
}
