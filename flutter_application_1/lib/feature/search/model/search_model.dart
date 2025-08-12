/// Search Model
/// Represents a single search result item.
/// Can be expanded with more fields like image, description, etc.

class SearchModel {
  final String title;
  final String description;

  SearchModel({
    required this.title,
    required this.description,
  });
}
