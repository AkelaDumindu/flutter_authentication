import 'package:flutter/material.dart';
import 'package:flutter_app5/models/meditation_exercise_model.dart';

class MeditationProvider extends ChangeNotifier {
  List<MeditationExercise> _allmeditationExercise = [];
  List<MeditationExercise> meditationExercise = [];

  MeditationProvider() {
    _allmeditationExercise = [
      MeditationExercise(
        category: "Stress Relief",
        name: "Peaceful Escape",
        description:
            "Immerse yourself in tranquility with this guided meditation designed to help you escape from daily stress. Begin with gentle breathing exercises to center yourself, then follow a visualization of a serene beach to release any built-up tension. This session will help you rejuvenate and find inner peace.",
        duration: 20,
        audioUrl: "https://example.com/audio/peaceful-escape.mp3",
        videoUrl: "https://www.youtube.com/watch?v=8uP36OcezL8",
      ),
      MeditationExercise(
        category: "Stress Relief",
        name: "Gentle Awakening",
        description:
            "Start your day with a calm and gentle awakening through this meditation. It combines deep breathing techniques with a visual journey through a tranquil forest, designed to ease your mind and prepare you for a productive day.",
        duration: 10,
        audioUrl: "https://example.com/audio/gentle-awakening.mp3",
        videoUrl: "https://www.youtube.com/watch?v=2mOH6q0LOj0",
      ),
      MeditationExercise(
        category: "Stress Relief",
        name: "Inner Sanctuary",
        description:
            "Find your inner sanctuary with this guided meditation. You will focus on slow, deliberate breaths and a visualization of a cozy, safe haven. This practice is meant to help you unwind and restore your sense of calm amidst any chaos.",
        duration: 25,
        audioUrl: "https://example.com/audio/inner-sanctuary.mp3",
        videoUrl: "https://www.youtube.com/watch?v=JwXwx1LxLuk",
      ),
      MeditationExercise(
        category: "Stress Relief",
        name: "Serenity Now",
        description:
            "Embrace serenity with this soothing meditation session. Through mindful breathing and a visualization of floating on a calm lake, you’ll learn to let go of stress and find a peaceful state of mind.",
        duration: 12,
        audioUrl: "https://example.com/audio/serenity-now.mp3",
        videoUrl: "https://www.youtube.com/watch?v=1A7Jp-I4Dz0",
      ),
      MeditationExercise(
        category: "Stress Relief",
        name: "Tranquil Mind",
        description:
            "Release stress and cultivate tranquility with this meditation. Using deep breathing and a visualization of a tranquil garden, you’ll be guided to a state of calmness and relaxation.",
        duration: 18,
        audioUrl: "https://example.com/audio/tranquil-mind.mp3",
        videoUrl: "https://www.youtube.com/watch?v=PRiSg5X3rm4",
      ),
      MeditationExercise(
        category: "Stress Relief",
        name: "Relaxation Haven",
        description:
            "Discover your relaxation haven with this guided session. It includes a series of breathing exercises followed by a visualization of a peaceful mountain retreat to help you release stress and embrace calmness.",
        duration: 22,
        audioUrl: "https://example.com/audio/relaxation-haven.mp3",
        videoUrl: "https://www.youtube.com/watch?v=Kf0Wk4sYQmc",
      ),
      MeditationExercise(
        category: "Stress Relief",
        name: "Calm Waves",
        description:
            "Let go of stress with the soothing sounds of calm waves. This meditation guides you through deep breathing and a visualization of gently lapping waves, helping you to unwind and find inner peace.",
        duration: 14,
        audioUrl: "https://example.com/audio/calm-waves.mp3",
        videoUrl: "https://www.youtube.com/watch?v=R5XW61tEkFY",
      ),
      MeditationExercise(
        category: "Stress Relief",
        name: "Mindful Moments",
        description:
            "Reconnect with yourself through mindful moments. This meditation focuses on intentional breathing and a visualization of a peaceful sunrise to help you release stress and embrace a sense of calm.",
        duration: 16,
        audioUrl: "https://example.com/audio/mindful-moments.mp3",
        videoUrl: "https://www.youtube.com/watch?v=SmKmy8yFf1E",
      ),
      MeditationExercise(
        category: "Stress Relief",
        name: "Zen Escape",
        description:
            "Escape to your Zen space with this guided meditation. You’ll practice deep breathing and imagine a serene Zen garden to help you clear your mind and find peace.",
        duration: 19,
        audioUrl: "https://example.com/audio/zen-escape.mp3",
        videoUrl: "https://www.youtube.com/watch?v=aT3M6sRufkM",
      ),
      MeditationExercise(
        category: "Stress Relief",
        name: "Mindful Retreat",
        description:
            "Retreat to a place of mindfulness with this calming meditation. Through guided breathing exercises and a visualization of a tranquil retreat, you will learn to let go of stress and nurture a sense of inner serenity.",
        duration: 21,
        audioUrl: "https://example.com/audio/mindful-retreat.mp3",
        videoUrl: "https://www.youtube.com/watch?v=oh9S0yWloIA",
      ),
    ];

    meditationExercise = _allmeditationExercise;
  }
}
