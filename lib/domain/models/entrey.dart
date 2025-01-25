import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Entry {
  int id;
  String name;
  String image;
  String description;
  String commonLocations;
  String category;

  // Construtor
  Entry(
      {required this.id,
      required this.name,
      required this.image,
      required this.description,
      required this.commonLocations,
      required this.category});

  //
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'commonLocations': commonLocations,
      'category': category,
    };
  }

  factory Entry.fromMap(Map<String, dynamic> map) {
    return Entry(
      id: map['id'] as int,
      name: map['name'] as String,
      image: map['image'] as String,
      description: map['description'] as String,
      commonLocations: jsonEncode(map['common_locations'] ?? ['Sem Localização']),
      category: map['category'] as String,
    );
  }
  // Converter o json em lista de strings
  List<String> commonLocationsConverter(){
    return (jsonDecode(commonLocations) as List<dynamic>).map((e) => e as String).toList();
  }

  String toJson() => json.encode(toMap());

  factory Entry.fromJson(String source) =>
      Entry.fromMap(json.decode(source) as Map<String, dynamic>);
}
