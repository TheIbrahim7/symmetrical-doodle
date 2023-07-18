import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
        child: TextField(
      decoration: InputDecoration(
        label: Text("Find your favourite dodo meal!"),
        labelStyle: TextStyle(
          fontSize: 16,
          // color: Colors.amberAccent,
        ),
        prefixIcon: Icon(
          Icons.search_rounded,
          color: Colors.green,
        ),
      ),
    ));
  }
}
