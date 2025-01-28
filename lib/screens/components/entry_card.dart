import 'package:flutter/material.dart';
import 'package:hyrule/domain/models/entrey.dart';

class EntryCard extends StatelessWidget {
  const EntryCard({super.key, required this.entry});

  final Entry entry;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Image.network(entry.image),
              Column(
                children: <Widget>[
                  Text(entry.name),
                  Text(entry.description),
                ],
              ),
            ],
          ),
          Wrap(

            children: entry
                .commonLocationsConverter()
                .map(
                  (e) => Chip(label: Text(e)),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
