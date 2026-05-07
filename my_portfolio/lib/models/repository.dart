class Repository {
  String title;
  String imageUrl;
  int stars;
  int forks;
  String description;
  List<String> technologies;
  String githubLink;

  Repository({
    required this.title,
    required this.imageUrl,
    required this.stars,
    required this.forks,
    required this.description,
    required this.technologies,
    required this.githubLink,
  });
}
