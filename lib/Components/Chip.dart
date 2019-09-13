import 'package:flutter/material.dart';

class TypeChip extends StatelessWidget {
  TypeChip({Key key, @required this.label}) : super(key : key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(label, style: TextStyle(color: Colors.white, fontSize: 14),),
        backgroundColor: Colors.orange,
      ),
    );
  }
}