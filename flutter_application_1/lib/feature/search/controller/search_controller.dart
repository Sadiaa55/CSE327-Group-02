import 'package:flutter_application_1/feature/search/model/search_model.dart';

/// SearchController
/// Handles search logic — filters items based on query.
class SearchController {
  // Mock data for demonstration. Replace with API or DB fetch later.
  final List<SearchModel> _items = [
    SearchModel(title: "The Matrix", description: "A sci-fi classic."),
    SearchModel(title: "Inception", description: "A mind-bending thriller."),
    SearchModel(title: "Interstellar", description: "A journey through space and time."),
    SearchModel(title: "The Dark Knight", description: "Batman fights Joker in Gotham."),
  ];

  /// Searches the list and returns matching results.
  List<SearchModel> search(String query) {
    if (query.isEmpty) return [];
    return _items
        .where((item) =>
            item.title.toLowerCase().contains(query.toLowerCase()) ||
            item.description.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
