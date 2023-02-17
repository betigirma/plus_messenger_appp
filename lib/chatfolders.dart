import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plus_messenger_app/localfolder.dart';
import 'package:plus_messenger_app/mylisttile.dart';

class ChatfoldersPage extends StatelessWidget {
  const ChatfoldersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text('Chat Folders'),
          backgroundColor: Colors.teal[500],
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
              child: Lottie.network(
                'https://assets8.lottiefiles.com/private_files/lf30_ccnjrset.json',
                width: 5,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                'Create folders for different groups of chats and quickly switch between them.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Recommended Folders',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.teal),
              ),
            ),
            const MyListTile(
                title: 'Personal',
                subtitle: 'Only messages from personal chats',
                status: true),
            const Divider(),
            const MyListTile(
                title: 'Users', subtitle: 'Local folder', status: true),
            const Divider(),
            const MyListTile(
                title: 'Groups',
                subtitle: 'Local folder: Groups, Supergroups',
                status: true),
            const Divider(),
            const MyListTile(
                title: 'Groups',
                subtitle: 'Local folder: Groups',
                status: true),
            const Divider(),
            const MyListTile(
                title: 'Supergroups', subtitle: 'Local folder', status: true),
            const Divider(),
            const MyListTile(
                title: 'Channels', subtitle: 'Local folder', status: true),
            const Divider(),
            const MyListTile(
                title: 'Bots', subtitle: 'Local folder', status: true),
            const Divider(),
            const MyListTile(
                title: 'Favorites', subtitle: 'Local folder', status: true),
            const Divider(),
            const MyListTile(
                title: 'Administrator', subtitle: 'Local folder', status: true),
            const Divider(),
            const MyListTile(
                title: 'Unmuted', subtitle: 'Local folder', status: true),
            const Divider(),
            const MyListTile(
                title: 'Unread', subtitle: 'Local folder', status: true),
            const Divider(),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Local folders are not synced with other clients.',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Chat Folders',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.teal),
              ),
            ),
            const ChatFolder(),
            const SizedBox(
              height: 1,
            ),
            new_folder('Create New Folder'),
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget new_folder(String name) {
  return Material(
    child: ListTile(
      leading: const Icon(
        Icons.add_circle_sharp,
        color: Colors.teal,
      ),
      title: Text(
        name,
        style: const TextStyle(fontStyle: FontStyle.normal),
      ),
    ),
  );
}
