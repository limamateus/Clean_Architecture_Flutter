import 'package:flutter/material.dart';
import 'package:hyrule/screens/results.dart';

import '../../utils/consts/categories.dart';

class Category extends StatelessWidget {
  Category({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            // Acessando a Tela de Results passando o nome da categoria selecionada.d
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => Results(category: category))));
          },
          child: Ink(
            child: Center(
              child: Image.asset("$imagePath$category.png"),
            ),
          ),
        ),
        Text(categories[category]!),
      ],
    );
  }
}
