import 'package:flutter/material.dart';
import 'package:hyrule/controllers/dao_controller.dart';
import 'package:hyrule/domain/models/entrey.dart';
import 'package:hyrule/utils/theme_app/theme.dart';

class Details extends StatelessWidget {
  Details({super.key, required this.entry});

  final Entry entry;
  final DaoController daoController = DaoController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Detalhes"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  entry.name.toUpperCase(),
                  style: EntryDecoration.titleText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Wrap(
                  spacing: 8.0,
                  children: entry
                      .commonLocationsConverter()
                      .map((e) => Chip(label: Text(e)))
                      .toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                      image: NetworkImage(entry.image),
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(entry.description),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        daoController.saveEntry(entry: entry);
      }),
    ));
  }
}
