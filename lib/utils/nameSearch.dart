import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:search/model/search_model.dart';

class NameSearch extends SearchDelegate<Search> {
  final UnmodifiableListView<Search> _nameList;
  NameSearch(this._nameList);
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {},
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = _nameList
        .where((element) => element.name.toLowerCase().contains(query)).toList();

    return ListView.builder(
      itemBuilder: (_, index)  {
       return  ListTile(
          title: Text("${results[index].name}"),
        );
      },
      itemCount: results.length,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final results = _nameList
        .where((element) => element.name.toLowerCase().contains(query)).toList();

    return ListView.builder(
      itemBuilder: (_, index)  {
       return  ListTile(
          title: Text("${results[index].name}"),
        );
      },
      itemCount: results.length,
    );
  }
}
