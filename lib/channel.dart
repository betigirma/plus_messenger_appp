import 'package:flutter/material.dart';

class NewchannelPage extends StatefulWidget {
  const NewchannelPage({super.key});

  @override
  State<NewchannelPage> createState() => _NewchannelPageState();
}

class _NewchannelPageState extends State<NewchannelPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: const BackButton(),
          title: const Text('New Channel'),
          backgroundColor: Colors.teal[500],
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.check)),
          ],
        ),
        body: ListView(
          //height: 100,
          // width: 450,
          //padding: const EdgeInsets.only(top: 3),
          //margin: const EdgeInsets.only(top: 1),
          children: [
            Container(
              height: 90,
              width: 300,
              margin: EdgeInsets.zero,
              padding: const EdgeInsets.all(1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      child: RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.teal[500],
                        padding: const EdgeInsets.all(8),
                        shape: const CircleBorder(),
                        child: const Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.zero,
                        )),
                        SizedBox(
                          height: 70,
                          child: Row(
                            children: [
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Channel Name',
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.only(
                                        left: 16.0,
                                        bottom: 8.0,
                                        top: 8.0,
                                        right: 16.0),
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.emoji_emotions,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Description ',
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.only(
                      left: 16.0, bottom: 8.0, top: 8.0, right: 16.0),
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Text(
                'You can provide an optional description for your channel',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
