import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.status});
  final String title;
  final String subtitle;
  final bool status;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: status
            ? TextButton(
                // ignore: prefer_const_constructors
                //style: ButtonStyle( backgroundColor: Colors.teal),
                onPressed: (() {}),
                child: const Text('Add'),
              )
            : const Center(),
      ),
    );
  }
}
