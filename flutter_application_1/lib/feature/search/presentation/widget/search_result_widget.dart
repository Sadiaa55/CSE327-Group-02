import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/search/model/search_model.dart';

/// SearchResultWidget
/// Displays a list of search results.
class SearchResultWidget extends StatelessWidget {
  final List<SearchModel> results;

  const SearchResultWidget({Key? key, required this.results}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (results.isEmpty) {
      return const Center(
        child: Text(
          "No results found.",
          style: TextStyle(fontSize: 16),
        ),
      );
    }

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final item = results[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          child: ListTile(
            title: Text(item.title),
            subtitle: Text(item.description),
          ),
        );
      },
    );
  }
}
