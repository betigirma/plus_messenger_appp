import 'package:flutter/material.dart';
import 'chattiles.dart';
import 'drawerlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plus',
      home: Mainpage(
        title: '',
      ),
    );
  }
}

class Mainpage extends StatefulWidget {
  final String title;

  const Mainpage({super.key, required this.title});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _currentIndex = 0;
  late String _title;

  // ignore: prefer_typing_uninitialized_variables
  Offset _tapPosition = Offset.zero;
  void _getTapPosition(TapDownDetails tapPosition) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    setState(() {
      _tapPosition = renderBox.globalToLocal(tapPosition.globalPosition);
      // print(_tapPosition);
    });
  }

  void _showContextMenu(context) async {
    final RenderObject? overlay =
        Overlay.of(context)?.context.findRenderObject();
    // ignore: unused_local_variable
    final result = await showMenu(
        context: context,
        position: RelativeRect.fromRect(
            Rect.fromLTWH(_tapPosition.dx, _tapPosition.dy, 20, 20),
            Rect.fromLTWH(0, 0, overlay!.paintBounds.size.width,
                overlay.paintBounds.size.height)),
        items: [
          const PopupMenuItem(
            value: "1",
            child: Expanded(
              child: ListTile(
                leading: Icon(Icons.reorder_outlined),
                title: Text('Reorder'),
              ),
            ),
          ),
          const PopupMenuItem(
            value: "2",
            child: Expanded(
              child: ListTile(
                leading: Icon(Icons.create),
                title: Text('Edit folder'),
              ),
            ),
          ),
          const PopupMenuItem(
            value: "3",
            child: Expanded(
              child: ListTile(
                leading: Icon(Icons.messenger_outline),
                title: Text('Mark all as read'),
              ),
            ),
          ),
          const PopupMenuItem(
            value: "4",
            child: Expanded(
              child: ListTile(
                leading: Icon(Icons.sort),
                title: Text('Sort by unread messages'),
              ),
            ),
          ),
          const PopupMenuItem(
            value: "5",
            child: Expanded(
              child: ListTile(
                leading: Icon(Icons.person_outline_outlined),
                title: Text('Show tab icons'),
              ),
            ),
          ),
          const PopupMenuItem(
            value: "6",
            child: Expanded(
              child: ListTile(
                leading: Icon(Icons.remove_red_eye_outlined),
                title: Text('Hide'),
              ),
            ),
          ),
        ]);
  }

  final List<Widget> _children = [
    Title(color: Colors.white, child: const Text('All chats')),
    Title(color: Colors.white, child: const Text('Contacts')),
    Title(color: Colors.white, child: const Text('Groups')),
    Title(color: Colors.white, child: const Text('Unread')),
    Title(color: Colors.white, child: const Text('Channel')),
    Title(color: Colors.white, child: const Text('Bots')),
  ];

  @override
  initState() {
    super.initState();
    _title = 'Plus messenger';
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: Text(_title),
            backgroundColor: Colors.teal[500],
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.folder_open))
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 4.0,
              tabs: [
                Tab(
                  child: GestureDetector(
                    onTapDown: (position) {
                      _getTapPosition(position);
                    },
                    onLongPress: () {
                      _showContextMenu(context);
                    },
                    child: const Icon(Icons.category),
                  ),
                ),
                Tab(
                  child: GestureDetector(
                    onTapDown: (position) {
                      _getTapPosition(position);
                    },
                    onLongPress: () {
                      _showContextMenu(context);
                    },
                    child: const Icon(Icons.folder_open),
                  ),
                ),
                Tab(
                  child: GestureDetector(
                    onTapDown: (position) {
                      _getTapPosition(position);
                    },
                    onLongPress: () {
                      _showContextMenu(context);
                    },
                    child: const Icon(Icons.folder_open),
                  ),
                ),
                Tab(
                  child: GestureDetector(
                    onTapDown: (position) {
                      _getTapPosition(position);
                    },
                    onLongPress: () {
                      _showContextMenu(context);
                    },
                    child: const Icon(Icons.chat_bubble_outline_rounded),
                  ),
                ),
                Tab(
                  child: GestureDetector(
                    onTapDown: (position) {
                      _getTapPosition(position);
                    },
                    onLongPress: () {
                      _showContextMenu(context);
                    },
                    child: const Icon(Icons.folder_open),
                  ),
                ),
                Tab(
                  child: GestureDetector(
                    onTapDown: (position) {
                      _getTapPosition(position);
                    },
                    onLongPress: () {
                      _showContextMenu(context);
                    },
                    child: const Icon(Icons.folder_open),
                  ),
                )
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                UserAccountsDrawerHeader(
                  accountName: const Text('Beti girma'),
                  accountEmail: const Text(
                    '+251 909773170',
                    style: TextStyle(
                        fontSize: 12, color: Colors.white38, height: 2),
                  ),
                  currentAccountPicture: CircleAvatar(
                    child: ClipOval(
                      child: Image.asset(
                        'images/p.jpg',
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.teal[500]),
                ),
                const DrawerList(),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: Text(
                    'Plus Messenger for Android v9.3.3.0 (19720) universal arm64-v8a',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 50),
              child: FractionallySizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListView.separated(
                      itemBuilder: (ctx, i) {
                        return ListTile(
                            leading: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage(items[i].imgPath),
                            ),
                            title: items[i].status
                                ? Text(
                                    items[i].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  )
                                : Row(
                                    children: [
                                      Text(
                                        items[i].name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.volume_mute,
                                        size: 18,
                                        color: Colors.grey[900],
                                      )
                                    ],
                                  ),
                            subtitle: Text(
                              items[i].message,
                              style: const TextStyle(color: Colors.black),
                            ),
                            // ignore: unnecessary_null_comparison
                            trailing: items[i].messNum != null
                                ? Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(items[i].time),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: items[i].status
                                                ? Colors.grey[400]
                                                : Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '${items[i].messNum}',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(items[i].time),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                    ],
                                  ));
                      },
                      separatorBuilder: (ctx, i) {
                        return const Divider();
                      },
                      itemCount: items.length),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 50),
              child: FractionallySizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListView.separated(
                      itemBuilder: (ctx, i) {
                        return ListTile(
                            leading: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage(items[i].imgPath),
                            ),
                            title: items[i].status
                                ? Text(
                                    items[i].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  )
                                : Row(
                                    children: [
                                      Text(
                                        items[i].name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.volume_mute,
                                        size: 18,
                                        color: Colors.grey[900],
                                      )
                                    ],
                                  ),
                            subtitle: Text(
                              items[i].message,
                              style: const TextStyle(color: Colors.black),
                            ),
                            // ignore: unnecessary_null_comparison
                            trailing: items[i].messNum != null
                                ? Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(items[i].time),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: items[i].status
                                                ? Colors.grey[400]
                                                : Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '${items[i].messNum}',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(items[i].time),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                    ],
                                  ));
                      },
                      separatorBuilder: (ctx, i) {
                        return const Divider();
                      },
                      itemCount: items.length),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 50),
              child: FractionallySizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListView.separated(
                      itemBuilder: (ctx, i) {
                        return ListTile(
                            leading: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage(items[i].imgPath),
                            ),
                            title: items[i].status
                                ? Text(
                                    items[i].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  )
                                : Row(
                                    children: [
                                      Text(
                                        items[i].name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.volume_mute,
                                        size: 18,
                                        color: Colors.grey[900],
                                      )
                                    ],
                                  ),
                            subtitle: Text(
                              items[i].message,
                              style: const TextStyle(color: Colors.black),
                            ),
                            // ignore: unnecessary_null_comparison
                            trailing: items[i].messNum != null
                                ? Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(items[i].time),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: items[i].status
                                                ? Colors.grey[400]
                                                : Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '${items[i].messNum}',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(items[i].time),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                    ],
                                  ));
                      },
                      separatorBuilder: (ctx, i) {
                        return const Divider();
                      },
                      itemCount: items.length),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 50),
              child: FractionallySizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListView.separated(
                      itemBuilder: (ctx, i) {
                        return ListTile(
                            leading: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage(items[i].imgPath),
                            ),
                            title: items[i].status
                                ? Text(
                                    items[i].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  )
                                : Row(
                                    children: [
                                      Text(
                                        items[i].name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.volume_mute,
                                        size: 18,
                                        color: Colors.grey[900],
                                      )
                                    ],
                                  ),
                            subtitle: Text(
                              items[i].message,
                              style: const TextStyle(color: Colors.black),
                            ),
                            // ignore: unnecessary_null_comparison
                            trailing: items[i].messNum != null
                                ? Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(items[i].time),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: items[i].status
                                                ? Colors.grey[400]
                                                : Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '${items[i].messNum}',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(items[i].time),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                    ],
                                  ));
                      },
                      separatorBuilder: (ctx, i) {
                        return const Divider();
                      },
                      itemCount: items.length),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 50),
              child: FractionallySizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListView.separated(
                      itemBuilder: (ctx, i) {
                        return ListTile(
                            leading: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage(items[i].imgPath),
                            ),
                            title: items[i].status
                                ? Text(
                                    items[i].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  )
                                : Row(
                                    children: [
                                      Text(
                                        items[i].name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.volume_mute,
                                        size: 18,
                                        color: Colors.grey[900],
                                      )
                                    ],
                                  ),
                            subtitle: Text(
                              items[i].message,
                              style: const TextStyle(color: Colors.black),
                            ),
                            // ignore: unnecessary_null_comparison
                            trailing: items[i].messNum != null
                                ? Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(items[i].time),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: items[i].status
                                                ? Colors.grey[400]
                                                : Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '${items[i].messNum}',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(items[i].time),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                    ],
                                  ));
                      },
                      separatorBuilder: (ctx, i) {
                        return const Divider();
                      },
                      itemCount: items.length),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 50),
              child: FractionallySizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListView.separated(
                      itemBuilder: (ctx, i) {
                        return ListTile(
                            leading: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage(items[i].imgPath),
                            ),
                            title: items[i].status
                                ? Text(
                                    items[i].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  )
                                : Row(
                                    children: [
                                      Text(
                                        items[i].name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.volume_mute,
                                        size: 18,
                                        color: Colors.grey[900],
                                      )
                                    ],
                                  ),
                            subtitle: Text(
                              items[i].message,
                              style: const TextStyle(color: Colors.black),
                            ),
                            // ignore: unnecessary_null_comparison
                            trailing: items[i].messNum != null
                                ? Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(items[i].time),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: items[i].status
                                                ? Colors.grey[400]
                                                : Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '${items[i].messNum}',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(items[i].time),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                    ],
                                  ));
                      },
                      separatorBuilder: (ctx, i) {
                        return const Divider();
                      },
                      itemCount: items.length),
                ),
              ),
            ),
            _children[_currentIndex],
          ]),
          bottomNavigationBar: BottomNavigationBar(
            onTap: onTabTapped,
            currentIndex: _currentIndex,
            selectedItemColor: Theme.of(context).primaryColor,
            type: BottomNavigationBarType.fixed,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.storage),
                label: 'All Chats',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.timer),
                label: 'Contacts',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart_outline),
                label: 'Groups',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.supervisor_account),
                label: 'Unread ',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.storage),
                label: 'Channel ',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.storage),
                label: 'Bots ',
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.teal[500],
            onPressed: () {},
            child: const Icon(Icons.create),
          ),
        ),
      );
  // ignore: non_constant_identifier_names
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'All Chats';
          }
          break;
        case 1:
          {
            _title = 'Contacts';
          }
          break;
        case 2:
          {
            _title = 'Groups';
          }
          break;
        case 3:
          {
            _title = 'Unread';
          }
          break;
        case 4:
          {
            _title = 'Channel';
          }
          break;
        case 5:
          {
            _title = 'Bots';
          }
          break;
      }
    });
  }
}
