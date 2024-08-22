class MindfullExercise {
  final String category;
  final String name;
  final String description;
  final List<String> instruction;
  final String instructionUrl;
  final int duration;
  final String imagePath;

  MindfullExercise({
    required this.category,
    required this.name,
    required this.description,
    required this.instruction,
    required this.instructionUrl,
    required this.duration,
    required this.imagePath,
  });

  // method to convert json data intp a mindfullExercise

  factory MindfullExercise.fromJson(Map<String, dynamic> json) {
    return MindfullExercise(
      category: json['category'],
      name: json['name'],
      description: json['descrition'],
      instruction: List<String>.from(json['instruction']),
      instructionUrl: json['instruction_url'],
      duration: json['duration'],
      imagePath: json['image_path'],
    );
  }

  // method to convert to json data

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'name': name,
      'description': description,
      'instruction': instruction,
      'instruction_url': instructionUrl,
      'duration': duration,
      'image_path': imagePath,
    };
  }
}
