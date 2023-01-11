import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoriesPage extends StatelessWidget {
  final String categorie;
  const CategoriesPage({super.key, required this.categorie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categorie),
      ),
      body: Center(
        child: Text(categorie),
      ),
    );
  }
}
