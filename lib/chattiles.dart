import 'package:flutter/material.dart';

final List<Chats> items = [
  const Chats(
      name: 'beti',
      message: 'How r u?',
      time: '10:39',
      imgPath: 'images/p.jpg',
      status: true,
      messNum: 2),
  const Chats(
      name: 'jerry',
      message: 'can we meet',
      time: '10:39',
      imgPath: 'images/p1.jpg',
      status: true,
      messNum: 2),
  const Chats(
      name: 'jerry twins ',
      message: 'hi there',
      time: 'Feb 12',
      imgPath: 'images/p2.jpg',
      status: false,
      messNum: 4),
  const Chats(
      name: 'bety twins',
      message: 'nice to know',
      time: '12:12',
      imgPath: 'images/p3.jpg',
      status: false,
      messNum: 20),
  const Chats(
      name: 'dibo',
      message: 'selam beylg',
      time: '6:11',
      imgPath: 'images/pic.jpg',
      status: true,
      messNum: 5),
  const Chats(
      name: 'samri ',
      message: 'eshi',
      time: 'Jan 1',
      imgPath: 'images/p4.jpg',
      status: true,
      messNum: 5),
  const Chats(
      name: 'Heven',
      message: 'i miss u too',
      time: '4:00',
      imgPath: 'images/p5.jpg',
      status: true,
      messNum: 4),
  const Chats(
      name: 'feven',
      message: 'teshalesh?',
      time: 'Dec 10',
      imgPath: 'images/p6.jpg',
      status: false,
      messNum: 2),
  const Chats(
      name: 'Crstina',
      message: 'whats on your mind?',
      time: '4:30',
      imgPath: 'images/p7.jpg',
      status: false,
      messNum: 6),
  const Chats(
      name: 'tesfu',
      message: 'thanks.',
      time: '6:00',
      imgPath: 'images/p8.jpg',
      status: true,
      messNum: 4),
];

class Chats extends StatefulWidget {
  const Chats(
      {super.key,
      required this.name,
      required this.message,
      required this.time,
      required this.imgPath,
      required this.status,
      required this.messNum});
  final String name;
  final String message;
  final String time;
  final String imgPath;
  final bool status;
  final int messNum;
  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) => const DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
        ),
      );
}
