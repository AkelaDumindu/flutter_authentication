class MeditationExercise {
  final String category;
  final String name;
  final String description;
  final String videoUrl;
  final int duration;
  final String audioUrl;

  MeditationExercise({
    required this.category,
    required this.name,
    required this.description,
    required this.videoUrl,
    required this.duration,
    required this.audioUrl,
  });

  // method to convert json data intp a mindfullExercise

  factory MeditationExercise.fromJson(Map<String, dynamic> json) {
    return MeditationExercise(
      category: json['category'],
      name: json['name'],
      description: json['descrition'],
      duration: json['duration'],
      videoUrl: json['video_url'],
      audioUrl: json['audio_url'],
    );
  }

  // method to convert to json data

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'name': name,
      'description': description,
      'duration': duration,
      'audio_url': audioUrl,
      'video_url': videoUrl,
    };
  }
}
