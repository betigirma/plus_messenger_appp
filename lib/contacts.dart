import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text('Contacts'),
          backgroundColor: Colors.teal[500],
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.person_add),
                  onPressed: () {},
                ),
                title: const Text(
                  'Invite Friends',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.location_on_outlined),
                  onPressed: () {},
                ),
                title: const Text(
                  'Find People Nearby',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {},
              ),
              const Text(
                'Sorted by last seen time',
                textAlign: TextAlign.start,
              ),
              contacts('Abel'),
              contacts('Abel Wendme'),
              contacts('Adis'),
              contacts('Aman'),
              contacts('Amen'),
              contacts('Asher'),
              contacts('Ashu'),
              contacts('Beki'),
              contacts('Beti'),
              contacts('Eyoab'),
              contacts('Feker'),
              contacts('Feven'),
              contacts('Hana'),
              contacts('Haset'),
              contacts('Jeri'),
              contacts('Lidu'),
              contacts('Lily'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal[500],
          onPressed: () {},
          child: const Icon(Icons.person_add_alt_1_rounded),
        ),
      ),
    );
  }
}

Widget contacts(String name) {
  return Material(
    child: ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.black,
      ),
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: const Text('last seen recently'),
    ),
  );
}
