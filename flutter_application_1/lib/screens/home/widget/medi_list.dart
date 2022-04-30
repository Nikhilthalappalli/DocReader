import 'package:flutter/material.dart';

class Medicat extends StatelessWidget {
  final int selected;
  final Function callback;
  Medicat(this.selected, this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('List'),
    );
  }
}
