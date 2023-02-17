import 'package:flutter/material.dart';

class ChatFolder extends StatelessWidget {
  const ChatFolder({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          const ListTile(
            leading: Icon((Icons.drag_handle_sharp)),
            title: Text(
              'All Chats',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('All Chats'),
          ),
          const Divider(),
          ListTile(
              leading: const Icon((Icons.drag_handle_sharp)),
              title: const Text(
                'Group',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('36 Chats'),
              trailing: IconButton(
                  onPressed: (() {}),
                  icon: const Icon(Icons.more_vert_outlined))),
          const Divider(),
          ListTile(
              leading: const Icon((Icons.drag_handle_sharp)),
              title: const Text(
                'Contacts',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('98 Chats'),
              trailing: IconButton(
                  onPressed: (() {}),
                  icon: const Icon(Icons.more_vert_outlined))),
          const Divider(),
          ListTile(
              leading: const Icon((Icons.drag_handle_sharp)),
              title: const Text(
                'Unread',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('All Chats'),
              trailing: IconButton(
                  onPressed: (() {}),
                  icon: const Icon(Icons.more_vert_outlined))),
          const Divider(),
          ListTile(
              leading: const Icon((Icons.drag_handle_sharp)),
              title: const Text(
                'Channels',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('68 Chats'),
              trailing: IconButton(
                  onPressed: (() {}),
                  icon: const Icon(Icons.more_vert_outlined))),
          const Divider(),
          ListTile(
              leading: const Icon((Icons.drag_handle_sharp)),
              title: const Text(
                'Family',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('2 Chats'),
              trailing: IconButton(
                  onPressed: (() {}),
                  icon: const Icon(Icons.more_vert_outlined))),
          const Divider(),
        ],
      ),
    );
  }
}
