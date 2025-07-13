import 'package:flutter/material.dart';

class ScrollViewItem extends StatelessWidget {
  const ScrollViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Item View",
        style: TextStyle(
          fontSize: 19,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
        ),
      ),
      textColor: Theme.of(context).colorScheme.onSurface,
      leading: Icon(
        Icons.list_alt,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
