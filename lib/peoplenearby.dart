import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PeoplenearbyPage extends StatefulWidget {
  const PeoplenearbyPage({super.key});

  @override
  State<PeoplenearbyPage> createState() => _PeoplenearbyPageState();
}

class _PeoplenearbyPageState extends State<PeoplenearbyPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: const BackButton(
              color: Colors.grey,
            )),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 40),
              child: Lottie.network(
                'https://assets5.lottiefiles.com/private_files/lf30_ed9sjb8t.json',
                width: 140,
                height: 85,
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 2),
              child: Text(
                'People Nearby',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Text(
                'Quickly add people nearby who are viewing this section and discover local group chats.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: Text(
                'Please switch on location access to enable this feature.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            Flexible(
              child: Container(
                //alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 80),
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                      minimumSize: const Size(500, 50),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: const Text('Allow Access'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
