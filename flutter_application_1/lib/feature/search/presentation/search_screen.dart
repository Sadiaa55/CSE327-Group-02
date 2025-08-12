import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/search/controller/search_controller.dart';
import 'package:flutter_application_1/feature/search/presentation/widget/search_bar_widget.dart';
import 'package:flutter_application_1/feature/search/presentation/widget/search_result_widget.dart';
import 'package:flutter_application_1/feature/search/model/search_model.dart';

/// SearchScreen
/// UI page where users can search and see results.
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final SearchController _controller = SearchController();
  List<SearchModel> _results = [];

  /// Called whenever search text changes
  void _onSearchChanged(String query) {
    setState(() {
      _results = _controller.search(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: Column(
        children: [
          SearchBarWidget(onChanged: _onSearchChanged),
          Expanded(
            child: SearchResultWidget(results: _results),
          ),
        ],
      ),
    );
  }
}
