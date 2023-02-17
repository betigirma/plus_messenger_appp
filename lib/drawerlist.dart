import 'package:flutter/material.dart';
import 'package:plus_messenger_app/calls.dart';
import 'package:plus_messenger_app/categories.dart';
import 'package:plus_messenger_app/channel.dart';
import 'package:plus_messenger_app/chatfolders.dart';
import 'package:plus_messenger_app/contacts.dart';
import 'package:plus_messenger_app/downloads.dart';
import 'package:plus_messenger_app/downloadthemes.dart';
import 'package:plus_messenger_app/newgroup.dart';
import 'package:plus_messenger_app/peoplenearby.dart';
import 'package:plus_messenger_app/plussetting.dart';
import 'package:plus_messenger_app/savedmessage.dart';
import 'package:plus_messenger_app/secret.dart';
import 'package:plus_messenger_app/setting.dart';
import 'package:plus_messenger_app/supportgroup.dart';
import 'package:plus_messenger_app/theming.dart';

import 'chatscounters.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.people),
              onPressed: () {},
            ),
            title: const Text(
              'New Group',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const NewGroupPage(),
              ));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.chat),
              onPressed: () {},
            ),
            title: const Text(
              'New Secret Chat',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const NewsecretchatPage(title: ''),
              ));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.people),
              onPressed: () {},
            ),
            title: const Text(
              'New Channel',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const NewchannelPage(),
              ));
            },
          ),
          const Divider(),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
            title: const Text(
              'Contacts',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ContactsPage(),
              ));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.arrow_downward_outlined),
              onPressed: () {},
            ),
            title: const Text(
              'Downloads ',
              style: TextStyle(color: Color.fromARGB(255, 210, 67, 67)),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const DownloadsPage(),
              ));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.folder_open),
              onPressed: () {},
            ),
            title: const Text(
              'Chat Folders',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ChatfoldersPage(),
              ));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.location_on_outlined),
              onPressed: () {},
            ),
            title: const Text(
              'People Nearby',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PeoplenearbyPage(),
              ));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.saved_search_outlined),
              onPressed: () {},
            ),
            title: const Text(
              'Saved Messages',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SavedmessagesPage(),
              ));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.call),
              onPressed: () {},
            ),
            title: const Text(
              'Calls',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CallsPage(),
              ));
            },
          ),
          const Divider(),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
            title: const Text(
              'Settings',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SettingsPage(),
              ));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.add_circle_outline_outlined),
              onPressed: () {},
            ),
            title: const Text(
              'Plus Settings',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PlussettingsPage(),
              ));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.folder_open_outlined),
              onPressed: () {},
            ),
            title: const Text(
              'Categories',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CategoriesPage(),
              ));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.color_lens_outlined),
              onPressed: () {},
            ),
            title: const Text(
              'Download themes',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const DownloadthemesPage(),
              ));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.brush_outlined),
              onPressed: () {},
            ),
            title: const Text(
              'Theming',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ThemingPage(),
              ));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.groups_outlined),
              onPressed: () {},
            ),
            title: const Text(
              'Support group',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SupportgroupPage(),
              ));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            title: const Text(
              'Chats Counters',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ChatscountersPage(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
