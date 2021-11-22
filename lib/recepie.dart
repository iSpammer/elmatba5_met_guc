class Recepie {
  final String id;
  final String title;
  final List<String> categoryId;
  final int difficulty;
  final List<String> ingredients;
  final List<String> images;
  final String steps;
  final bool isVegan;
  final bool isVegeterian;
  final String imageURL;
  Recepie(
      {required this.id,
      required this.title,
      required this.categoryId,
      required this.difficulty,
        required this.ingredients,
        required this.images,
      required this.steps,
      required this.isVegan,
      required this.isVegeterian,
      required this.imageURL});
}
